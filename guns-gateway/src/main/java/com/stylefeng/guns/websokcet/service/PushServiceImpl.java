package com.stylefeng.guns.websokcet.service;

import com.alibaba.dubbo.config.annotation.Service;
import com.stylefeng.guns.websokcet.WebsocketServer;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @note:
 * @author:fine
 * @date:2018/12/3 9:29 PM
 */
@Service
public class PushServiceImpl implements PushService{

    @Autowired
    private WebsocketServer websocketServer;

    @Override
    public void sendNotification(Object data) {
        websocketServer.send(data);
    }

    @Override
    public void sendUUIDNotification(String uuid) {
        websocketServer.send(uuid);
    }
}
