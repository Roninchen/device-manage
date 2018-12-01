package com.stylefeng.guns.api.device.vo;

import lombok.Data;

/**
 * TODO
 *
 * @author 17262
 * @version V1.0
 * @since 2018-12-01 13:00
 */
@Data
public class HomepageVO {
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
     * 负责人
     */
    private String charge;
    /**
     * 借用人
     */
    private String owner;

}
