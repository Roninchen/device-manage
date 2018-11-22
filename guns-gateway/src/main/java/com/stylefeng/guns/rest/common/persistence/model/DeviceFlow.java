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
    private Integer deviceId;
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
    private Long lendFrom;
    /**
     * 借入人id
     */
    @TableField("lend_to")
    private Long lendTo;
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
    private Integer status;
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


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public String getDeviceUuid() {
        return deviceUuid;
    }

    public void setDeviceUuid(String deviceUuid) {
        this.deviceUuid = deviceUuid;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public Long getLendFrom() {
        return lendFrom;
    }

    public void setLendFrom(Long lendFrom) {
        this.lendFrom = lendFrom;
    }

    public Long getLendTo() {
        return lendTo;
    }

    public void setLendTo(Long lendTo) {
        this.lendTo = lendTo;
    }

    public String getLendFromName() {
        return lendFromName;
    }

    public void setLendFromName(String lendFromName) {
        this.lendFromName = lendFromName;
    }

    public String getLendToName() {
        return lendToName;
    }

    public void setLendToName(String lendToName) {
        this.lendToName = lendToName;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Long createTime) {
        this.createTime = createTime;
    }

    public Long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Long updateTime) {
        this.updateTime = updateTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "DeviceFlow{" +
        "id=" + id +
        ", deviceId=" + deviceId +
        ", deviceUuid=" + deviceUuid +
        ", deviceName=" + deviceName +
        ", lendFrom=" + lendFrom +
        ", lendTo=" + lendTo +
        ", lendFromName=" + lendFromName +
        ", lendToName=" + lendToName +
        ", status=" + status +
        ", createTime=" + createTime +
        ", updateTime=" + updateTime +
        ", remark=" + remark +
        "}";
    }
}
