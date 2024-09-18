package org.opengoofy.assault.messageservice.biz.handler.filter.base;

import org.springframework.core.Ordered;

/**
 * 抽象业务责任链组件
 */
public interface AbstractChainHandler<T> extends Ordered {
    
    /**
     * 执行责任链逻辑
     *
     * @param requestParam 责任链执行入参
     */
    void handler(T requestParam);
    
    /**
     * @return 责任链组件标识，标识是什么 handler 组件（比如多个任务需要多个责任链处理，那么需要实现类标识自己负责处理什么任务）
     */
    String mark();
}
