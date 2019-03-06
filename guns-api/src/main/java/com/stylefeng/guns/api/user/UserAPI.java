package com.stylefeng.guns.api.user;

import com.stylefeng.guns.api.user.vo.RegisterBo;
import com.stylefeng.guns.api.user.vo.UserInfoVo;
import com.stylefeng.guns.api.user.vo.UserInfoModel;


public interface UserAPI {

    UserInfoVo login(String username, String password);

    int register(RegisterBo registerBo);

    boolean checkUsername(String username);

    UserInfoVo getUserInfo(int uuid);

    UserInfoModel updateUserInfo(UserInfoModel userInfoModel);
}

