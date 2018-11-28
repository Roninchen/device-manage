package com.stylefeng.guns.api.device.bo;

import lombok.Data;

/**
 * TODO
 *
 * @author 17262
 * @version V1.0
 * @since 2018-11-25 16:16
 */
@Data
public class DeviceBorrowBO {
    /**
     * 企业编号
     */
    private String enterpriseNo;
    /**
     * 借用备注
     */
    private String remark;
}
