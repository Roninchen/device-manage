package com.stylefeng.guns.rest.common.persistence.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
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
@TableName("device_flow")
public class DeviceFlow extends Model<DeviceFlow> {

    private static final long serialVersionUID = 1L;

    /**
     * 自增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 设备id
     */
    @TableField("device_id")
    private String deviceId;
    /**
     * 通用唯一识别码
     */
    @TableField("device_uuid")
    private String deviceUuid;
    /**
     * 设备名字
     */
    @TableField("device_name")
    private String deviceName;
    /**
     * 借出人id
     */
    @TableField("lend_from")
    private String lendFrom;
    /**
     * 借入人id
     */
    @TableField("lend_to")
    private String lendTo;
    /**
     * 借出人名字
     */
    @TableField("lend_from_name")
    private String lendFromName;
    /**
     * 借入人名字
     */
    @TableField("lend_to_name")
    private String lendToName;
    /**
     * 设备流转状态
     */
    private String status;
    /**
     * 创建时间
     */
    @TableField("create_time")
    private Long createTime;
    /**
     * 更新时间
     */
    @TableField("update_time")
    private Long updateTime;
    /**
     * 备注信息
     */
    private String remark;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
