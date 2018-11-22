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
public class Device extends Model<Device> {

    private static final long serialVersionUID = 1L;

    /**
     * 自增id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 设备名称
     */
    private String name;
    /**
     * 设备型号
     */
    private String version;
    /**
     * 通用唯一识别码
     */
    private String uuid;
    /**
     * 设备类型
     */
    private Integer type;
    /**
     * 编号
     */
    private Integer number;
    /**
     * 状态
     */
    private Integer status;
    /**
     * 责任人id
     */
    @TableField("responsible_id")
    private Long responsibleId;
    /**
     * 负责人名字
     */
    @TableField("responsible_name")
    private String responsibleName;
    /**
     * 持有人id
     */
    @TableField("hold_person_id")
    private Long holdPersonId;
    /**
     * 持有者名字
     */
    @TableField("hold_person_name")
    private String holdPersonName;
    /**
     * 创建时间
     */
    @TableField("create_time")
    private Long createTime;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Long getResponsibleId() {
        return responsibleId;
    }

    public void setResponsibleId(Long responsibleId) {
        this.responsibleId = responsibleId;
    }

    public String getResponsibleName() {
        return responsibleName;
    }

    public void setResponsibleName(String responsibleName) {
        this.responsibleName = responsibleName;
    }

    public Long getHoldPersonId() {
        return holdPersonId;
    }

    public void setHoldPersonId(Long holdPersonId) {
        this.holdPersonId = holdPersonId;
    }

    public String getHoldPersonName() {
        return holdPersonName;
    }

    public void setHoldPersonName(String holdPersonName) {
        this.holdPersonName = holdPersonName;
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
        return "Device{" +
        "id=" + id +
        ", name=" + name +
        ", version=" + version +
        ", uuid=" + uuid +
        ", type=" + type +
        ", number=" + number +
        ", status=" + status +
        ", responsibleId=" + responsibleId +
        ", responsibleName=" + responsibleName +
        ", holdPersonId=" + holdPersonId +
        ", holdPersonName=" + holdPersonName +
        ", createTime=" + createTime +
        "}";
    }
}
