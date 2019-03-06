package com.stylefeng.guns.api.user.vo;

import lombok.Data;

import java.io.Serializable;
@Data
public class UserModel{
    private String username;
    private String password;
    private String phone;
    private String code;
    private String department;
    private Integer  gender;
    private Integer  number;

}
