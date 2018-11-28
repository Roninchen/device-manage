/*
 * Copyright (c) 2001-2018 GuaHao.com Corporation Limited. All rights reserved.
 * This software is the confidential and proprietary information of GuaHao Company.
 * ("Confidential Information").
 * You shall not disclose such Confidential Information and shall use it only
 * in accordance with the terms of the license agreement you entered into with GuaHao.com.
 */
package com.stylefeng.guns.api.vo;

import com.alibaba.fastjson.JSON;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;

/**
 * TODO
 *
 * @author 17262
 * @version V1.0
 * @since 2018-11-28 22:29
 */
@Getter
@Setter
public class ResponseReturn {

    public static Map responseReturn(@NonNull int code, @NonNull String message, Object o) {
        Map<String,Object> map = new HashMap<>();
        map.put("code",code);
        map.put("message",message);
        if (Objects.nonNull(o)) {
            map.put("data",o);
        }
        return map;
    }


    /**
     * 带data的成功
     * @param o
     * @return
     */
    public static Map success(@NonNull Object o) {
        return responseReturn(200,"成功",null);
    }

    /**
     * 默认成功
     * @return
     */
    public static Map success() {
        return success(null);
    }

    public static Map failed(@NonNull int code,@NonNull String message) {
        return responseReturn(code,message,null);
    }

    public static Map failed() {
        return failed(500,"失败");
    }

    public static Map failed(@NonNull String message) {
        return failed(500,message);
    }
}
