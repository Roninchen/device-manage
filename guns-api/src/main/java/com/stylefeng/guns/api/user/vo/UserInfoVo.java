package com.stylefeng.guns.api.user.vo;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;

import java.io.Serializable;

import lombok.Data;

/**
 * <p>
 * 
 * </p>
 *
 * @author chauncy
 * @since 2018-11-22
 */
@Data
public class UserInfoVo extends Model<UserInfoVo> {
    /**
     * 自增id
     */
    private Integer id;
    /**
     * 员工姓名
     */
    @TableField("user_name")
    private String userName;
    private String email;
    /**
     * 手机号码
     */
    private String phone;
    /**
     * 性别
     */
    private Integer gender;
    /**
     * 员工编号
     */
    private Integer number;
    /**
     * 部门
     */
    private String department;
    private String fullName;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
