package com.stylefeng.guns.websokcet.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @note:
 * @author:fine
 * @date:2018/12/3 6:22 PM
 */

@Component
@ConfigurationProperties(prefix = "websocket")
@Getter
@Setter
public class WebSocketServerConfig {

    /**
     * 端口
     */
    private int port;

    /**
     * 工作线程
     */
    private int workerThread;

    /**
     * boss线程
     */
    private int bossThread;

}
