package com.stylefeng.guns.rest.common.persistence.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author chauncy
 * @since 2018-11-22
 */
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
    private Long operator;
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
    private Long deviceId;
    /**
     * 设备名称
     */
    @TableField("device_name")
    private String deviceName;
    /**
     * 关联人id
     */
    @TableField("connect_person")
    private Long connectPerson;
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


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getOperator() {
        return operator;
    }

    public void setOperator(Long operator) {
        this.operator = operator;
    }

    public String getOperatorName() {
        return operatorName;
    }

    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Long getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Long deviceId) {
        this.deviceId = deviceId;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    public Long getConnectPerson() {
        return connectPerson;
    }

    public void setConnectPerson(Long connectPerson) {
        this.connectPerson = connectPerson;
    }

    public String getConnectPersonName() {
        return connectPersonName;
    }

    public void setConnectPersonName(String connectPersonName) {
        this.connectPersonName = connectPersonName;
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
        return "History{" +
        "id=" + id +
        ", operator=" + operator +
        ", operatorName=" + operatorName +
        ", type=" + type +
        ", typeName=" + typeName +
        ", deviceId=" + deviceId +
        ", deviceName=" + deviceName +
        ", connectPerson=" + connectPerson +
        ", connectPersonName=" + connectPersonName +
        ", createTime=" + createTime +
        "}";
    }
}
