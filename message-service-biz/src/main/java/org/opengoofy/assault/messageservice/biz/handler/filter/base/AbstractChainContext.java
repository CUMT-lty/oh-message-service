/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.opengoofy.assault.messageservice.biz.handler.filter.base;

import com.google.common.collect.Maps;
import org.opengoofy.assault.framework.starter.base.ApplicationContextHolder;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/**
 * 抽象责任链上下文
 */
@Component
public final class AbstractChainContext<T> implements CommandLineRunner {

    /**
     * mark : 一类 handler 实现类
     */
    private final Map<String, List<AbstractChainHandler>> abstractChainHandlerContainer = Maps.newHashMap();
    
    /**
     * 责任链组件执行
     *
     * @param mark 某一类 handler 的标识
     * @param requestParam 请求参数
     */
    public void handler(String mark, T requestParam) {
        abstractChainHandlerContainer.get(mark).stream() // 拿到某一类 handler
                .sorted(Comparator.comparing(Ordered::getOrder)) // 按 order 排序
                .forEach(each -> each.handler(requestParam)); // 顺序执行 handle 方法
    }
    
    @Override
    public void run(String... args) throws Exception {
        // 拿到所有 handler 的执行容器，并放入对应 mark 的 List 中
        Map<String, AbstractChainHandler> chainFilterMap = ApplicationContextHolder.getBeansOfType(AbstractChainHandler.class);
        chainFilterMap.forEach((beanName, bean) -> { // 遍历
            List<AbstractChainHandler> abstractChainHandlers = abstractChainHandlerContainer.get(bean.mark());
            if (abstractChainHandlers == null) {
                abstractChainHandlers = new ArrayList();
            }
            abstractChainHandlers.add(bean);
            abstractChainHandlerContainer.put(bean.mark(), abstractChainHandlers);
        });
    }
}
