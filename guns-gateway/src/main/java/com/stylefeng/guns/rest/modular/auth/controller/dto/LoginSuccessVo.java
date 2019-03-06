/*
 * Copyright (c) 2001-2018 GuaHao.com Corporation Limited. All rights reserved.
 * This software is the confidential and proprietary information of GuaHao Company.
 * ("Confidential Information").
 * You shall not disclose such Confidential Information and shall use it only
 * in accordance with the terms of the license agreement you entered into with GuaHao.com.
 */
package com.stylefeng.guns.rest.modular.auth.controller.dto;

import com.stylefeng.guns.api.user.vo.UserInfoVo;

import lombok.Data;

/**
 * TODO
 *
 * @author 17262
 * @version V1.0
 * @since 2018-11-22 23:42
 */
@Data
public class LoginSuccessVo {
    private AuthResponse authResponse;
    private UserInfoVo userInfoVo;
}
