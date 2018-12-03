package com.stylefeng.guns.websokcet.service;

/**
 * @note:
 * @author:fine
 * @date:2018/12/3 9:26 PM
 */
public interface PushService {


    /**
     * 用户唯一id
     * @param email
     * @param type 1.用户收到借用请求，2用借用请求得到处理
     */
    void sendNotification(String email,int type);
}
