package org.opengoofy.assault.messageservice.api.dto;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 消息查询入参实体
 */
@Data
public class MessageQueryRequestDTO {
    
    // ========================= 仅根据消息的 ID 查询 ======================
    /**
     * 消息 ID
     */
    private String msgId;
    
    // ========================= 根据时间和接收者查询 ======================
    /**
     * 接收者，必填
     */
    private String receiver;
    
    /**
     * 发送开始时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date sendStartTime;
    
    /**
     * 发送结束时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date sendEndTime;
}
