package com.stylefeng.guns.websokcet.service;

/**
 * @note:
 * @author:fine
 * @date:2018/12/3 9:26 PM
 */
public interface PushService {

    /**
     * 发送 通知数据给客户端
     * @param data
     *
     */
    void sendNotification(Object data);


    /**
     * 用户唯一id
     * @param uuid
     */
    void sendUUIDNotification(String uuid);
}
