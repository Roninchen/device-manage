package com.stylefeng.guns.websokcet.service;

import com.alibaba.fastjson.JSON;
import com.stylefeng.guns.websokcet.WebsocketServer;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

/**
 * @note:
 * @author:fine
 * @date:2018/12/3 9:29 PM
 */
@Service
public class PushServiceImpl implements PushService{

    @Override
    public void sendNotification(String email,int type) {

        Map<String,Object> map = new HashMap<>();
        map.put("email",email);
        map.put("type",type);
        WebsocketServer.send(JSON.toJSONString(map));
    }
}
