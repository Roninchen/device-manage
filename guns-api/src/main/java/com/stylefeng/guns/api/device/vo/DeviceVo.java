package com.stylefeng.guns.api.device.vo;

import lombok.Data;
import java.io.Serializable;
@Data
public class DeviceVo implements Serializable {

    private String uuid;
    /**
     * 企业编号
     */
    private String enterpriseNo;
    /**
     * 设备名称
     */
    private String deviceName;
    /**
     * 型号
     */
    private String deviceModel;
    /**
     * 技术指标
     */
    private String techniqueTarget;
    /**
     * 国别厂家
     */
    private String manufactor;
    /**
     * 设备分类，1为计量设备
     */
    private String type;
    /**
     * 管理状态,0为封存，1为已领用
     */
    private String status;
    /**
     * 持有人
     */
    private String owner;
    /**
     * 借用人
     */
    private String charge;
    /**
     * 是否为固定资产，1是固定资产
     */
    private String isFix;
    /**
     * 借用时间
     */
    private Long updateTime;
    private String deviceStatus;
    /**
     * 借用人部门
     */
    private String ownerDepartment;
    /**
     * 负责人部门
     */
    private String chargeDepartment;
    /**
     * 出厂编号
     */
    private String manufactNo;
    /**
     * 有效日期
     */
    private String validDate;
    /**
     * 鉴定结果
     */
    private String appraisal;
}
