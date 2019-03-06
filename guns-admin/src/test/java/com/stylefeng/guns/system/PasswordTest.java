/*
 * Copyright (c) 2001-2018 GuaHao.com Corporation Limited. All rights reserved.
 * This software is the confidential and proprietary information of GuaHao Company.
 * ("Confidential Information").
 * You shall not disclose such Confidential Information and shall use it only
 * in accordance with the terms of the license agreement you entered into with GuaHao.com.
 */
package com.stylefeng.guns.system;

import com.stylefeng.guns.core.shiro.ShiroKit;

/**
 * TODO
 *
 * @author 17262
 * @version V1.0
 * @since 2018-11-28 13:29
 */
public class PasswordTest {

    public static void main(String[] args) {
        String oldMd5 = ShiroKit.md5("yida", "8pgby");
        System.out.println(oldMd5);
    }
}
