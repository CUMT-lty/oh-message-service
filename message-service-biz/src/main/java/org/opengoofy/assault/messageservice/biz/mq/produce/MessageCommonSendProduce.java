package org.opengoofy.assault.messageservice.biz.mq.produce;

import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson2.JSON;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.rocketmq.client.producer.SendResult;
import org.apache.rocketmq.common.message.MessageConst;
import org.apache.rocketmq.spring.core.RocketMQTemplate;
import org.opengoofy.assault.messageservice.biz.common.MessageRocketMQConstants;
import org.springframework.messaging.Message;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.stereotype.Component;

import java.util.UUID;

import static org.opengoofy.assault.messageservice.biz.common.MessageRocketMQConstants.MESSAGE_COMMON_TOPIC;

/**
 * 消息发送生产者
 */
@Slf4j
@Component
@AllArgsConstructor
public class MessageCommonSendProduce {
    
    private final RocketMQTemplate rocketMQTemplate;
    
    /**
     * 消息发送，默认 Topic {@link MessageRocketMQConstants#MESSAGE_COMMON_TOPIC}
     */
    public void send(Object messageSendEvent, String keys, String tag) {
        send(messageSendEvent, MESSAGE_COMMON_TOPIC, keys, tag);
    }
    
    /**
     * 消息发送，自定义 Topic
     * 此接口必须保证高可用，也就是消息必须发送成功
     */
    public void send(Object messageSendEvent, String topic, String keys, String tag) {
        keys = StrUtil.isEmpty(keys) ? UUID.randomUUID().toString() : keys; // 可以理解为自定义业务唯一ID
        Message<?> message = MessageBuilder
                .withPayload(messageSendEvent) // Event 算是消息中心的消息维度
                .setHeader(MessageConst.PROPERTY_KEYS, keys)
                .build();
        try {
            String topicAndTag = StrUtil.builder()
                    .append(topic)
                    .append(":")
                    .append(tag) // 设置 tag 是为了区分短信验证码消息和其他类型的消息
                    .toString();
            // 必须设定超时时间，防止servlet容器线程一直阻塞
            // 如果大量线程阻塞：容器线程池打满，导致后续请求进阻塞队列，服务假死。阻塞队列打满，导致 OOM，服务彻底挂掉。
            SendResult sendResult = rocketMQTemplate.syncSend(topicAndTag, message, 2000); // 使用同步发送方式，保证消息在发送阶段不丢
            log.info("消息发送结果：{}，消息ID：{}，消息Keys：{}", sendResult.getSendStatus(), sendResult.getMsgId(), keys);
        } catch (Throwable ex) {
            log.error("消息发送失败，消息体：{}", JSON.toJSONString(messageSendEvent), ex);
        }
    }
}
