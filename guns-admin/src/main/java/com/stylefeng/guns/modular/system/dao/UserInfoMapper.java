package com.stylefeng.guns.modular.system.dao;

import com.stylefeng.guns.modular.system.model.UserInfo;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author fine
 * @since 2018-11-29
 */
public interface UserInfoMapper extends BaseMapper<UserInfo> {
    List<UserInfo> searchByUserName(@Param("userName")String userName);

}
