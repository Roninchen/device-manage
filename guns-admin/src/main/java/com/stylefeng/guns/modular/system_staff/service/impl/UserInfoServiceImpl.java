package com.stylefeng.guns.modular.system_staff.service.impl;

import com.stylefeng.guns.modular.system.model.UserInfo;
import com.stylefeng.guns.modular.system.dao.UserInfoMapper;
import com.stylefeng.guns.modular.system_staff.service.IUserInfoService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author fine
 * @since 2018-11-29
 */
@Service
public class UserInfoServiceImpl extends ServiceImpl<UserInfoMapper, UserInfo> implements IUserInfoService {


    @Override
    public List<UserInfo> searchByUserName(String userName) {
        Map<String,Object> map = new HashMap<>();
        map.put("user_name",userName);
        List<UserInfo> list =  selectByMap(map);
        return list;
    }
}
