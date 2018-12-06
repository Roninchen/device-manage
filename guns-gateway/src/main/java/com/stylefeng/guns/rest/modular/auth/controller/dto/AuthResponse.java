package com.stylefeng.guns.rest.modular.auth.controller.dto;

import java.io.Serializable;

/**
 * 认证的响应结果
 *
 * @author fengshuonan
 * @Date 2017/8/24 13:58
 */
public class AuthResponse implements Serializable {

    private static final long serialVersionUID = 1250166508152483573L;

    /**
     * jwt token
     */
    private final String token;

    /**
     * 过期时间
     */
    private long expireTime;

    /**
     * 用于客户端混淆md5加密
     */
    private final String randomKey;

    public AuthResponse(String token, long expireTime, String randomKey) {
        this.token = token;
        this.expireTime = expireTime;
        this.randomKey = randomKey;
    }

    public AuthResponse(String token, String randomKey) {
        this.token = token;
        this.randomKey = randomKey;
    }

    public long getExpireTime() {
        return expireTime;
    }

    public void setExpireTime(long expireTime) {
        this.expireTime = expireTime;
    }

    public String getToken() {
        return this.token;
    }

    public String getRandomKey() {
        return randomKey;
    }
}
