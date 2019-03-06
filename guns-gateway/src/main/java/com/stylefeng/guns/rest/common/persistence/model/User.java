package com.stylefeng.guns.rest.common.persistence.model;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
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
public class User extends Model<User> {
    /**
     * 自增id
     */
    private Integer id;
    private String uuid;
    /**
     * 员工姓名
     */
    @TableField("user_name")
    private String userName;
    private String email;
    /**
     * 密码
     */
    @TableField("user_pwd")
    private String userPwd;
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
    /**
     * 创建时间
     */
    @TableField("create_time")
    private Long createTime;

    /**
     * 名字全拼
     */
    private  String fullName;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
