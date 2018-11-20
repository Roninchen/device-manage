package com.stylefeng.guns.rest.modular.user.serviceImpl;

import com.stylefeng.guns.api.user.UserAPI;
import com.stylefeng.guns.api.user.vo.UserInfoModel;
import com.stylefeng.guns.api.user.vo.UserModel;
import com.stylefeng.guns.core.util.MD5Util;
import com.stylefeng.guns.rest.common.persistence.dao.UserMapper;
import com.stylefeng.guns.rest.common.persistence.model.User;
import com.stylefeng.guns.rest.common.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class UserService implements UserAPI {

    @Autowired
    private UserMapper userMapper;

    @Override
    public int login(String username, String password) {
        ////根据登录账户获取用户信息
        User user = new User();
        user.setPhone(username);
        User result = userMapper.selectOne(user);
        if (result!=null && result.getId()>0){
            String md5Password = MD5Util.encrypt(password);
            if (result.getUserPwd().equals(md5Password)){
                return result.getId();
            }
        }
        return 0;
    }

    @Override
    public boolean register(UserModel userModel) {
        User user =new User();

        String md5Password= MD5Util.encrypt(userModel.getPassword());

        user.setUserName(userModel.getUsername());
        user.setPhone(userModel.getPhone());
        user.setUserPwd(md5Password);
        user.setCreateTime(DateUtil.getTimeOfEastEight());
        user.setDepartment(userModel.getDepartment());
        user.setGender(userModel.getGender());
        user.setNumber(userModel.getNumber());

        Integer insert = userMapper.insert(user);
        if (insert>0){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public boolean checkUsername(String username) {
        return false;
    }

    @Override
    public UserInfoModel getUserInfo(int uuid) {
        return null;
    }

    @Override
    public UserInfoModel updateUserInfo(UserInfoModel userInfoModel) {
        return null;
    }
}
