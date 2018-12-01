package com.stylefeng.guns.rest.modular.es;

import java.io.Serializable;

import org.springframework.data.elasticsearch.annotations.Document;

import lombok.Data;

/**
 * TODO
 *
 * @author 17262
 * @version V1.0
 * @since 2018-11-30 14:46
 */
@Data
@Document(indexName = "asset",type = "assetInfo")
public class FixAssetInfo implements Serializable {
    private Integer id;
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
    private Integer isFix;
    private Long createTime;
    private Long updateTime;
}
