package org.opengoofy.assault.messageservice.biz.handler.send.base;

import cn.hutool.core.collection.CollUtil;
import lombok.extern.slf4j.Slf4j;
import org.opengoofy.assault.messageservice.api.dto.MessageSendRequestDTO;
import org.opengoofy.assault.messageservice.biz.base.strategy.AbstractExecuteStrategy;
import org.opengoofy.assault.messageservice.biz.dto.MessagePlatformSendResponseDTO;
import org.opengoofy.assault.messageservice.biz.handler.select.MessageSendChannelSelector;
import org.opengoofy.assault.messageservice.biz.mq.event.MessageSendEvent;

import javax.annotation.Resource;

import static org.opengoofy.assault.messageservice.biz.common.MessageConstants.SMS_MESSAGE_CHANNELS;

/**
 * 抽象消息发送服务
 */
@Slf4j
public abstract class AbstractMessageSendService implements MessageSendService, AbstractExecuteStrategy<MessageSendEvent, MessagePlatformSendResponseDTO> {
    
    @Resource
    private MessageSendChannelSelector messageSendChannelSelector;
    
    @Override
    public MessagePlatformSendResponseDTO send(MessageSendEvent messageSendEvent) throws Exception {
        MessageSendRequestDTO messageSendRequest = messageSendEvent.getMessageSendRequest();
        if (SMS_MESSAGE_CHANNELS.contains(messageSendRequest.getMsgType())) {
            MessagePlatformSendResponseDTO executeResp = executeResp(messageSendEvent); // 执行消息发送，由具体的消息发送处理器来实现
            // 下面这段逻辑其实是递归重试
            if (!executeResp.getSuccess() && CollUtil.isNotEmpty(messageSendEvent.getSmsOptionalChannels())) { // 如果没有成功 且 还有可用的短信发送渠道
                // 选择发送消息具体实现
                MessageSendService messageSendService = messageSendChannelSelector.select(messageSendEvent); // 重新选择短信发送服务商
                executeResp = messageSendService.send(messageSendEvent); // 重新发送短信
            }
            // 如果一直失败，所有的短信发送渠道都会不可用，递归就会结束，下面返回结果的时候就会返回失败
            return executeResp;
        }
        return executeResp(messageSendEvent);
    }
}
