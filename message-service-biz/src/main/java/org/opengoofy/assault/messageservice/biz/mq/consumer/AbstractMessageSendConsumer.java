package org.opengoofy.assault.messageservice.biz.mq.consumer;

import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.extern.slf4j.Slf4j;
import org.opengoofy.assault.framework.starter.cache.DistributedCache;
import org.opengoofy.assault.messageservice.api.dto.MQCallBackTransferDTO;
import org.opengoofy.assault.messageservice.api.dto.MQCallbackDTO;
import org.opengoofy.assault.messageservice.biz.base.message.MessageWrapper;
import org.opengoofy.assault.messageservice.biz.common.MessageRocketMQConstants;
import org.opengoofy.assault.messageservice.biz.dao.entity.TemplateConfigDO;
import org.opengoofy.assault.messageservice.biz.dao.mapper.TemplateConfigMapper;
import org.opengoofy.assault.messageservice.biz.dto.MessagePlatformSendResponseDTO;
import org.opengoofy.assault.messageservice.biz.handler.select.MessageSendChannelSelector;
import org.opengoofy.assault.messageservice.biz.handler.send.base.MessageSendService;
import org.opengoofy.assault.messageservice.biz.mq.event.MessageSaveEvent;
import org.opengoofy.assault.messageservice.biz.mq.event.MessageSendEvent;
import org.opengoofy.assault.messageservice.biz.mq.produce.MessageCommonSendProduce;

import javax.annotation.Resource;
import java.util.Objects;
import java.util.Optional;

import static org.opengoofy.assault.messageservice.biz.common.MessageCacheConstants.DEFAULT_CACHE_TIMOUT;
import static org.opengoofy.assault.messageservice.biz.common.MessageCacheConstants.MESSAGE_TEMPLATE_CACHE_PREFIX_KEY;
import static org.opengoofy.assault.messageservice.biz.common.MessageRocketMQConstants.CALLBACK_MESSAGE_SEND_TAG_TEMPLATE;
import static org.opengoofy.assault.messageservice.biz.common.MessageRocketMQConstants.MESSAGE_CALLBACK_TOPIC;

/**
 * 消息发送消费者抽象
 */
@Slf4j
public abstract class AbstractMessageSendConsumer {
    
    @Resource
    private MessageCommonSendProduce messageCommonSendProduce;
    @Resource
    private MessageSendChannelSelector messageSendChannelSelector;
    @Resource
    private DistributedCache distributedCache;
    @Resource
    private TemplateConfigMapper templateConfigMapper;
    
    /**
     * 消息发送，通过抽象类复用消息发送相关代码
     */
    public void sendMessage(MessageSendEvent messageSendEvent) {
        MessagePlatformSendResponseDTO sendResponse = null;
        String templateId = messageSendEvent.getMessageSendRequest().getTemplateId();
        try {
            TemplateConfigDO smsMessageTemplates = distributedCache.safeGet( // 获取短信验证码消息模版
                    MESSAGE_TEMPLATE_CACHE_PREFIX_KEY + templateId,
                    TemplateConfigDO.class,
                    () -> { // 函数式编程
                        TemplateConfigDO templateConfigDO = templateConfigMapper.selectOne(
                                Wrappers.lambdaQuery(TemplateConfigDO.class).eq(TemplateConfigDO::getTemplateId, templateId)
                        );
                        return templateConfigDO;
                    },
                    new Long(DEFAULT_CACHE_TIMOUT)
            );
            messageSendEvent.setSmsOptionalChannels(StrUtil.split(smsMessageTemplates.getChannelIds(), ","));
            // 选择不同的消息发送服务（阿里云、腾讯云），因为后续还需扩展不同的云服务提供商，所以内部使用策略模式处理的
            MessageSendService messageSendService = messageSendChannelSelector.select(messageSendEvent);
            // 使用具体的消息发送服务发送消息到用户
            sendResponse = messageSendService.send(messageSendEvent);
        } catch (Throwable ex) {
            log.error("发送消息流程执行失败，消息入参：{}", JSON.toJSONString(messageSendEvent), ex);
        }
        // 通过 MQ 触发客户端消息发送结果回调
        mqAsyncCallback(messageSendEvent, sendResponse);
        // 消息发送后，保存发送结果到数据库。为什么还要发一个 MQ？
        // 1. 这样可以提高短信发送的吞吐量，使验证码短信更快让用户接到
        // 2. 减轻数据库操作压力，因为当前流程是通过线程池执行的，并发压力较大
        mqAsyncSendSaveMessage(messageSendEvent, sendResponse);
    }
    
    private void mqAsyncCallback(MessageSendEvent messageSendEvent, MessagePlatformSendResponseDTO sendResponse) {
        try {
            MQCallbackDTO mqCallback = messageSendEvent.getMessageSendRequest().getMqCallback();
            if (mqCallback == null) {
                return;
            }
            String mqCallBackTypes = mqCallback.getType().toLowerCase(); // 回调类型：success, fail. all
            boolean executeFail = sendResponse == null || sendResponse.getSuccess(); // 成功失败标识
            // 判断回调类型
            boolean mqCallBackSendFlag = (Objects.equals(mqCallBackTypes, "all") // 任何结果都回调
                    || (Objects.equals(mqCallBackTypes, "success") && !executeFail) // 成功回调
                    || (Objects.equals(mqCallBackTypes, "fail") && executeFail)); // 失败回调
            if (mqCallBackSendFlag) {
                MQCallBackTransferDTO mqCallBackTransfer = MQCallBackTransferDTO.builder() // 封装回调消息
                        .errorMsg(executeFail ? Optional.ofNullable(sendResponse).map(each -> each.getErrMsg()).orElse("Send message process execution failed") : null)
                        .success(!executeFail)
                        .msgId(messageSendEvent.getMsgId())
                        .messageSendRequest(messageSendEvent.getMessageSendRequest())
                        .build();
                MessageWrapper messageWrapper = new MessageWrapper(messageSendEvent.getMsgId(), mqCallBackTransfer);
                // 通过 tag 区分不同的业务场景（尽量避免添加不必要的 topic）
                messageCommonSendProduce.send(messageWrapper, MESSAGE_CALLBACK_TOPIC, messageWrapper.getKeys(), String.format(CALLBACK_MESSAGE_SEND_TAG_TEMPLATE, mqCallback.getServiceName(), mqCallback.getBizScene()));
            }
        } catch (Throwable ex) {
            log.error("MQ异步回调消息发送结果失败", ex);
        }
    }
    
    private void mqAsyncSendSaveMessage(MessageSendEvent messageSendEvent, MessagePlatformSendResponseDTO sendResponse) {
        try {
            MessageSaveEvent messageSaveEvent = MessageSaveEvent.builder()
                    .messagePlatformSendResponse(sendResponse)
                    .messageSendRequest(messageSendEvent.getMessageSendRequest())
                    .msgId(messageSendEvent.getMsgId())
                    .currentSendChannel(messageSendEvent.getCurrentSendChannel())
                    .build();
            messageCommonSendProduce.send(messageSaveEvent, messageSaveEvent.getMsgId(), MessageRocketMQConstants.COMMON_MESSAGE_SAVE_TAG);
        } catch (Throwable ex) {
            log.error("MQ异步发送保存消息失败", ex);
        }
    }
}
