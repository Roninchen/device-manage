/*
 * Copyright (c) 2001-2018 GuaHao.com Corporation Limited. All rights reserved.
 * This software is the confidential and proprietary information of GuaHao Company.
 * ("Confidential Information").
 * You shall not disclose such Confidential Information and shall use it only
 * in accordance with the terms of the license agreement you entered into with GuaHao.com.
 */
package com.stylefeng.guns.api.user.vo;

import lombok.Data;

/**
 * TODO
 *
 * @author 17262
 * @version V1.0
 * @since 2018-11-22 22:08
 */
@Data
public class RegisterBo {

   private String email;

   private String userName;

   private String userPwd;

   private String phone;
}
