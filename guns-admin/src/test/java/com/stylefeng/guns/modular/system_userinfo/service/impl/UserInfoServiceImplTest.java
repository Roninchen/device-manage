package com.stylefeng.guns.modular.system_userinfo.service.impl;

import com.stylefeng.guns.base.BaseJunit;
import com.stylefeng.guns.modular.system_userinfo.service.IUserInfoService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class UserInfoServiceImplTest extends BaseJunit {

    @Autowired
    private IUserInfoService iUserInfoService;

    @Test
    public void test() {
        iUserInfoService.searchByUserName("陆伯祥");
    }
}