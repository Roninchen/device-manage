package com.stylefeng.guns.rest.modular.auth.controller.dto;

import com.stylefeng.guns.rest.modular.auth.validator.dto.Credence;
import lombok.Data;

/**
 * 认证的请求dto
 *
 * @author fengshuonan
 * @Date 2017/8/24 14:00
 */
@Data
public class AuthRequest {

    private String email;
    private String password;
    // 1 需要密码 2不需要密码
    private Integer needPass;

}
