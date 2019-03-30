package com.stylefeng.guns.rest.modular.user.serviceImpl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.stylefeng.guns.api.user.UserAPI;
import com.stylefeng.guns.api.user.vo.RegisterBo;
import com.stylefeng.guns.api.user.vo.UserInfoVo;
import com.stylefeng.guns.api.user.vo.UserInfoModel;
import com.stylefeng.guns.core.util.MD5Util;
import com.stylefeng.guns.rest.common.persistence.dao.UserInfoMapper;
import com.stylefeng.guns.rest.common.persistence.dao.UserMapper;
import com.stylefeng.guns.rest.common.persistence.model.User;
import com.stylefeng.guns.rest.common.utils.DateUtil;
import com.stylefeng.guns.rest.common.persistence.model.UserInfo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService implements UserAPI {

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private UserInfoMapper userInfoMapper;

    @Override
    public UserInfoVo login(String email, String password,Integer needPass) {

        UserInfo userInfo = new UserInfo();
        UserInfoVo userInfoVo = new UserInfoVo();
        userInfo.setUserName(email);
        List<UserInfo> user_name = userInfoMapper.selectList(new EntityWrapper<UserInfo>().eq("user_name", email));
        if (user_name.size()>0){
            userInfoVo.setDepartment(user_name.get(0).getDepartment());
            userInfoVo.setEmail(user_name.get(0).getEmail());
            userInfoVo.setId(user_name.get(0).getId());
            userInfoVo.setUserName(user_name.get(0).getUserName());
            if (needPass == 1){
                List<User> email1 = userMapper.selectList(new EntityWrapper<User>().eq("email", userInfoVo.getEmail()));
                if (email1.size() < 1) {
                    if (!password.equals("welcome")){
                        userInfoVo.setId(0);
                        return userInfoVo;
                    }
                    User user = new User();
                    user.setEmail(userInfoVo.getEmail());
                    user.setUserPwd("welcome");
                    userMapper.insert(user);
                }else {
                    User user = email1.get(0);
                    //密码不匹配
                    if (user.getUserPwd() != password){
                        userInfoVo.setId(0);
                        return userInfoVo;
                    }
                }
            }
            return userInfoVo;
        }
        userInfoVo.setId(0);
        return userInfoVo;
        /**
        UserInfoVo userInfoVo = new UserInfoVo();
        ////根据登录账户获取用户信息
        User user = new User();
        //user.setEmail(email);
        user.setFullName(email);
        User result = userMapper.selectOne(user);
        if (result!=null && result.getId()>0){
            String md5Password = MD5Util.encrypt(password);
            if (result.getUserPwd().equals(md5Password)){
                //userInfoVo.setCreateTime(user.getCreateTime());
                userInfoVo.setUserName(result.getUserName());
                userInfoVo.setPhone(result.getPhone());
                userInfoVo.setNumber(result.getNumber());
                userInfoVo.setDepartment(result.getDepartment());
                userInfoVo.setEmail(result.getEmail());
                userInfoVo.setId(result.getId());
                return userInfoVo;
            }
        }
        userInfoVo.setId(0);
        return userInfoVo;
         **/
    }

    @Override
    public int register(RegisterBo registerBo) {
        List<UserInfo> email = userInfoMapper
            .selectList(new EntityWrapper<UserInfo>().like("email", registerBo.getEmail()));
                //.eq("user_name",registerBo.getUserName()));
        //系统id必须对应，用户不是系统用户无权限注册
        if (email.size()<1){
            return 1;
        }
        List<User> users = userMapper.selectList(new EntityWrapper<User>().eq("email", registerBo.getEmail()));
        //账号已存在
        if (users.size()!=0){
            return 2;
        }
        UserInfo userInfo = email.get(0);
        User user = new User();
        user.setEmail(userInfo.getEmail());
        user.setUserName(registerBo.getUserName());
        user.setDepartment(userInfo.getDepartment());
        user.setUserPwd(MD5Util.encrypt(registerBo.getUserPwd()));
        user.setPhone(registerBo.getPhone());
        user.setCreateTime(DateUtil.getTimeOfEastEight());
        user.setFullName(registerBo.getEmail());
        Integer insert = userMapper.insert(user);
        //0为成功
        if (insert==1){
            return 0;
        }else {
            return 3;
        }

    }

    @Override
    public boolean checkUsername(String username) {
        return false;
    }

    @Override
    public UserInfoVo getUserInfo(int uuid) {
        //通过id获取user信息
        UserInfo user = userInfoMapper.selectById(uuid);
        UserInfoVo userInfoVo = new UserInfoVo();
        userInfoVo.setEmail(user.getEmail());
        userInfoVo.setUserName(user.getUserName());
        userInfoVo.setDepartment(user.getDepartment());
        userInfoVo.setId(user.getId());
        return userInfoVo;
    }

    @Override
    public UserInfoModel updateUserInfo(UserInfoModel userInfoModel) {
        return null;
    }
}
