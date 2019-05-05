package com.stylefeng.guns.modular.system.dao;

import com.stylefeng.guns.base.BaseJunit;
import com.stylefeng.guns.modular.system.model.UserInfo;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class UserInfoMapperTest extends BaseJunit {

    @Autowired
    UserInfoMapper userInfoMapper;

    @Test
    public void findSearch() {
        List<UserInfo>list = userInfoMapper.searchByUserName("陆伯祥");
        Assert.assertEquals(1,list.size());
    }

}