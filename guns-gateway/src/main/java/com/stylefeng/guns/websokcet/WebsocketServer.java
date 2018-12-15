package com.stylefeng.guns.websokcet;

import com.corundumstudio.socketio.Configuration;
import com.corundumstudio.socketio.SocketIOServer;
import com.stylefeng.guns.websokcet.config.WebSocketServerConfig;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

/**
 * @note:
 * @author:fine
 * @date:2018/12/3 5:40 PM
 */
@Slf4j
@Component
public final class WebsocketServer implements CommandLineRunner {

    private Configuration configuration = new Configuration();

    private static SocketIOServer socketIOServer;

    private WebSocketServerConfig serverConfig;


    public WebsocketServer(WebSocketServerConfig serverConfig) {
        this.serverConfig = serverConfig;
    }

    @Override
    public void run(String... args) throws Exception {
        initSocketServer();
        socketIOServer.start();
        log.info("websocket 服务启动：prot:{}",configuration.getPort());
    }


    private void initSocketServer() {

        configuration = new Configuration();
        configuration.setPort(serverConfig.getPort());
        configuration.setHostname("127.0.0.1");
        configuration.setWorkerThreads(serverConfig.getWorkerThread());
        configuration.setBossThreads(serverConfig.getBossThread());

        socketIOServer = new SocketIOServer(configuration);
    }

    public static void send(Object data) {
        socketIOServer.getBroadcastOperations().sendEvent(Const.EVENT_SEND_DATA,data);
    }

}
