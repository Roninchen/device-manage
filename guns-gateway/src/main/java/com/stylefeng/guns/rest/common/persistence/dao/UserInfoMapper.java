package com.stylefeng.guns.rest.common.persistence.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.stylefeng.guns.rest.common.persistence.model.User;
import com.stylefeng.guns.rest.common.persistence.model.UserInfo;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author chauncy
 * @since 2018-11-22
 */
public interface UserInfoMapper extends BaseMapper<UserInfo> {

    UserInfo selectByEmail(String email);

    UserInfo selectByName(String name);

}
