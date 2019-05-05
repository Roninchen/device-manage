package com.stylefeng.guns.modular.system.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import com.stylefeng.guns.annotation.Alias;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author fine
 * @since 2018-11-30
 */
@TableName("fix_asset_new")
public class FixAsset extends Model<FixAsset> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 企业编号
     */
    @Alias(name = "企业编号")
    @TableField("enterprise_no")
    private String enterpriseNo;
    /**
     * 名称
     */
    @Alias(name = "名称")
    @TableField("device_name")
    private String deviceName;
    /**
     * 型号
     */
    @Alias(name = "型号")
    @TableField("device_model")
    private String deviceModel;
    /**
     * 技术指标
     */
    @Alias(name = "技术指标")
    @TableField("technique_target")
    private String techniqueTarget;
    /**
     * 国别厂家
     */
    @Alias(name = "国别厂家")
    @TableField("manufactor")
    private String manufactor;
    /**
     * 设备分类，1为计量设备
     */
    @Alias(name = "分类名称")
    @TableField("type")
    private String type;
    /**
     * 管理状态
     */
    @Alias(name = "管理状态")
    @TableField("status")
    private String status;
    /**
     * 使用人
     */
    @Alias(name = "责任人")
    @TableField("charge")
    private String charge;
    /**
     * 使用部门
     */
    @Alias(name = "使用部门")
    @TableField("charge_department")
    private String chargeDepartment;
    /**
     * 出厂编号
     */
    @Alias(name = "出厂编号")
    @TableField("manufact_no")
    private String manufactNo;

    /**
     * 出厂日期
     */
    @Alias(name = "有效日期")
    @TableField("valid_date")
    private String validDate;

    /**
     * 鉴定结果
     */
    @Alias(name = "检定结果")
    @TableField("appraisal")
    private String appraisal;

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

    public String getChargeDepartment() {
        return chargeDepartment;
    }

    public void setChargeDepartment(String chargeDepartment) {
        this.chargeDepartment = chargeDepartment;
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

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "FixAsset{" +
                "id=" + id +
                ", enterpriseNo='" + enterpriseNo + '\'' +
                ", deviceName='" + deviceName + '\'' +
                ", deviceModel='" + deviceModel + '\'' +
                ", techniqueTarget='" + techniqueTarget + '\'' +
                ", manufactor='" + manufactor + '\'' +
                ", type='" + type + '\'' +
                ", status='" + status + '\'' +
                ", charge='" + charge + '\'' +
                ", chargeDepartment='" + chargeDepartment + '\'' +
                ", manufactNo='" + manufactNo + '\'' +
                ", validDate='" + validDate + '\'' +
                ", appraisal='" + appraisal + '\'' +
                '}';
    }
}
