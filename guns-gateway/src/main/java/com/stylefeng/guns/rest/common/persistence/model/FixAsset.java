package com.stylefeng.guns.rest.common.persistence.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author chauncy
 * @since 2018-11-22
 */
@TableName("fix_asset")
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
     * 持有人
     */
    private String owner;
    /**
     * 是否为固定资产，1是固定资产
     */
    @TableField("is_fix")
    private Integer isFix;
    @TableField("create_time")
    private Long createTime;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getEnterpriseNo() {
        return enterpriseNo;
    }

    public void setEnterpriseNo(String enterpriseNo) {
        this.enterpriseNo = enterpriseNo;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public String getDeviceModel() {
        return deviceModel;
    }

    public void setDeviceModel(String deviceModel) {
        this.deviceModel = deviceModel;
    }

    public String getTechniqueTarget() {
        return techniqueTarget;
    }

    public void setTechniqueTarget(String techniqueTarget) {
        this.techniqueTarget = techniqueTarget;
    }

    public String getManufactor() {
        return manufactor;
    }

    public void setManufactor(String manufactor) {
        this.manufactor = manufactor;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public Integer getIsFix() {
        return isFix;
    }

    public void setIsFix(Integer isFix) {
        this.isFix = isFix;
    }

    public Long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "FixAsset{" +
        "id=" + id +
        ", uuid=" + uuid +
        ", enterpriseNo=" + enterpriseNo +
        ", deviceName=" + deviceName +
        ", deviceModel=" + deviceModel +
        ", techniqueTarget=" + techniqueTarget +
        ", manufactor=" + manufactor +
        ", type=" + type +
        ", status=" + status +
        ", owner=" + owner +
        ", isFix=" + isFix +
        ", createTime=" + createTime +
        "}";
    }
}
