package com.stylefeng.guns.modular.system_userinfo.service;

import com.stylefeng.guns.modular.system.model.UserInfo;
import com.baomidou.mybatisplus.service.IService;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author fine
 * @since 2018-11-29
 */
public interface IUserInfoService extends IService<UserInfo> {

    List<UserInfo> searchByUserName(@Param("userName")String userName);

}
