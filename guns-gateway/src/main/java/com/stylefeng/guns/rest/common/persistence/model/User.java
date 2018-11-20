package com.stylefeng.guns.rest.common.persistence.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import lombok.Data;

import java.io.Serializable;


/**
 * <p>
 * 
 * </p>
 *
 * @author chauncy
 * @since 2018-11-18
 */
@Data
public class User extends Model<User> {
    /**
     * 自增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 员工姓名
     */
    private String userName;
    /**
     * 密码
     */
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
    private Long createTime;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
