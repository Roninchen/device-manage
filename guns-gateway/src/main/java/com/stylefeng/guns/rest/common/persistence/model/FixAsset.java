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
@TableName("fix_asset")
@Data
public class FixAsset extends Model<FixAsset> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String uuid;
    /**
     * 企业编号
     */
    @TableField("enterprise_no")
    private String enterpriseNo;
    /**
     * 设备名称
     */
    @TableField("device_name")
    private String deviceName;
    /**
     * 型号
     */
    @TableField("device_model")
    private String deviceModel;
    /**
     * 技术指标
     */
    @TableField("technique_target")
    private String techniqueTarget;
    /**
     * 国别厂家
     */
    private String manufactor;
    /**
     * 设备分类，1为计量设备
     */
    private Integer type;
    /**
     * 管理状态,0为封存，1为已领用
     */
    private Integer status;
    /**
     * 负责人名字
     */
    private String charge;
    /**
     * 负责人email
     */
    private String chargeEmail;
    /**
     * 持有人
     */
    private String owner;
    /**
     * 持有人email
     */
    private String ownerEmail;
    /**
     * 是否为固定资产，1是固定资产
     */
    @TableField("is_fix")
    private Integer isFix;
    @TableField("create_time")
    private Long createTime;

    @Override
    protected Serializable pkVal() {
        return null;
    }
}
