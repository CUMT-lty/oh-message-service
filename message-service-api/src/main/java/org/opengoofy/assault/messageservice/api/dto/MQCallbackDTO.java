package org.opengoofy.assault.messageservice.api.dto;

import lombok.Data;

import java.util.Map;

/**
 * MQ 回调实体
 */
@Data
public class MQCallbackDTO {
    
    /**
     * 项目名称，比如 message-service
     */
    private String serviceName;
    
    /**
     * 业务场景，用户自定义
     */
    private String bizScene;
    
    /**
     * 回调类型，success,fail,all 三种
     */
    private String type;
    
    /**
     * 客户端需要扩展的字段
     */
    private Map<String, Object> extParams;
}
