/*
 * Copyright (c) 2001-2018 GuaHao.com Corporation Limited. All rights reserved.
 * This software is the confidential and proprietary information of GuaHao Company.
 * ("Confidential Information").
 * You shall not disclose such Confidential Information and shall use it only
 * in accordance with the terms of the license agreement you entered into with GuaHao.com.
 */
package com.stylefeng.guns.rest.modular.user.serviceImpl;

import com.stylefeng.guns.api.device.DeviceServiceApi;
import com.stylefeng.guns.api.device.vo.DeviceVo;
import com.stylefeng.guns.rest.common.persistence.dao.FixAssetMapper;
import com.stylefeng.guns.rest.common.persistence.model.FixAsset;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * TODO
 *
 * @author 17262
 * @version V1.0
 * @since 2018-11-23 21:54
 */
@Service
public class DeviceService implements DeviceServiceApi {
    @Autowired
    private FixAssetMapper fixAssetMapper;
    @Override
    public DeviceVo getDeviceByEnterpriseNo(String enterpriseNo) {
        FixAsset fixAssetC =new FixAsset();
        fixAssetC.setEnterpriseNo(enterpriseNo);
        FixAsset fixAsset = fixAssetMapper.selectOne(fixAssetC);
        if (fixAsset==null){
            return null;
        }
        DeviceVo deviceVo = new DeviceVo();
        deviceVo.setDeviceModel(fixAsset.getDeviceModel());
        deviceVo.setUuid(fixAsset.getUuid());
        deviceVo.setType(fixAsset.getType());
        deviceVo.setTechniqueTarget(fixAsset.getTechniqueTarget());
        deviceVo.setStatus(fixAsset.getStatus());
        deviceVo.setOwner(fixAsset.getOwner());
        deviceVo.setManufactor(fixAsset.getManufactor());
        deviceVo.setIsFix(fixAsset.getIsFix());
        deviceVo.setEnterpriseNo(fixAsset.getEnterpriseNo());
        deviceVo.setDeviceName(fixAsset.getDeviceName());
        return deviceVo;
    }
}
