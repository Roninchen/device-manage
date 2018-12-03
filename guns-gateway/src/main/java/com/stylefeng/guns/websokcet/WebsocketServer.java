package com.stylefeng.guns.websokcet;

import com.alibaba.dubbo.config.annotation.Service;
import com.corundumstudio.socketio.Configuration;
import com.corundumstudio.socketio.SocketIOClient;
import com.corundumstudio.socketio.SocketIOServer;
import com.stylefeng.guns.websokcet.config.WebSocketServerConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

/**
 * @note:
 * @author:fine
 * @date:2018/12/3 5:40 PM
 */
@Slf4j
@Service
public final class WebsocketServer implements CommandLineRunner {

    private Configuration configuration = new Configuration();

    private static ConcurrentHashMap<String, SocketIOClient> clients = new ConcurrentHashMap<>();

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

        int i=0;
        while (true) {
            send("{"+i+"}");
            i++;
            TimeUnit.SECONDS.sleep(2);
        }
    }


    private void initSocketServer() {

        configuration = new Configuration();
        configuration.setPort(serverConfig.getPort());
        configuration.setHostname("localhost");
        configuration.setWorkerThreads(serverConfig.getWorkerThread());
        configuration.setBossThreads(serverConfig.getBossThread());

        socketIOServer = new SocketIOServer(configuration);
    }

    public void send(Object data) {
        socketIOServer.getBroadcastOperations().sendEvent(Const.EVENT_SEND_DATA,data);
    }

}
