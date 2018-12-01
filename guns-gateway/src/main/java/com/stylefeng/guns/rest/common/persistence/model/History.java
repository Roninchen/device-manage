package com.stylefeng.guns.rest.common.persistence.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
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
public class History extends Model<History> {

    private static final long serialVersionUID = 1L;

    /**
     * 操作记录子增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 操作者
     */
    private String operator;
    /**
     * 操作人名字
     */
    @TableField("operator_name")
    private String operatorName;
    /**
     * 操作类型
     */
    private Integer type;
    /**
     * 操作名称
     */
    @TableField("type_name")
    private String typeName;
    @TableField("device_id")
    private String deviceId;
    /**
     * 设备名称
     */
    @TableField("device_name")
    private String deviceName;
    /**
     * 关联人id
     */
    @TableField("connect_person")
    private String connectPerson;
    /**
     * 关联人名字
     */
    @TableField("connect_person_name")
    private String connectPersonName;
    /**
     * 创建时间
     */
    @TableField("create_time")
    private Long createTime;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
