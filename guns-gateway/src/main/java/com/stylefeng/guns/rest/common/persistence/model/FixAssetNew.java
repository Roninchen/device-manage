package com.stylefeng.guns.rest.common.persistence.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author chauncy
 * @since 2019-03-09
 */
@TableName("fix_asset_new")
public class FixAssetNew extends Model<FixAssetNew> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
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
     * 分类名称设备分类，1为计量设备
     */
    private String type;
    /**
     * 管理状态,0为封存，1为已领用
     */
    private String status;
    /**
     * 使用人负责人名字
     */
    private String charge;
    /**
     * 出厂编号
     */
    @TableField("manufact_no")
    private String manufactNo;
    /**
     * 有效日期
     */
    @TableField("valid_date")
    private String validDate;
    /**
     * 鉴定结果
     */
    private String appraisal;
    /**
     * 使用部门
     */
    @TableField("charge_department")
    private String chargeDepartment;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCharge() {
        return charge;
    }

    public void setCharge(String charge) {
        this.charge = charge;
    }

    public String getManufactNo() {
        return manufactNo;
    }

    public void setManufactNo(String manufactNo) {
        this.manufactNo = manufactNo;
    }

    public String getValidDate() {
        return validDate;
    }

    public void setValidDate(String validDate) {
        this.validDate = validDate;
    }

    public String getAppraisal() {
        return appraisal;
    }

    public void setAppraisal(String appraisal) {
        this.appraisal = appraisal;
    }

    public String getChargeDepartment() {
        return chargeDepartment;
    }

    public void setChargeDepartment(String chargeDepartment) {
        this.chargeDepartment = chargeDepartment;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "FixAssetNew{" +
        "id=" + id +
        ", enterpriseNo=" + enterpriseNo +
        ", deviceName=" + deviceName +
        ", deviceModel=" + deviceModel +
        ", techniqueTarget=" + techniqueTarget +
        ", manufactor=" + manufactor +
        ", type=" + type +
        ", status=" + status +
        ", charge=" + charge +
        ", manufactNo=" + manufactNo +
        ", validDate=" + validDate +
        ", appraisal=" + appraisal +
        ", chargeDepartment=" + chargeDepartment +
        "}";
    }
}
