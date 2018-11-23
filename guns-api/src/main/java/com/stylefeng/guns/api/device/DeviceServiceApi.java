package com.stylefeng.guns.api.device;

import com.stylefeng.guns.api.device.vo.DeviceVo;

public interface DeviceServiceApi {

    DeviceVo getDeviceByEnterpriseNo(String enterpriseNo);

}
