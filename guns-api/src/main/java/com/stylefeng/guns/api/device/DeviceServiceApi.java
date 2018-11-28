package com.stylefeng.guns.api.device;

import com.stylefeng.guns.api.device.bo.DeviceBorrowBO;
import com.stylefeng.guns.api.device.bo.LendBO;
import com.stylefeng.guns.api.device.vo.DeviceVo;

import java.util.Map;

public interface DeviceServiceApi {

    DeviceVo getDeviceByEnterpriseNo(String enterpriseNo);

    Map borrowDevice(DeviceBorrowBO deviceBorrowBO,String email);

    Map addEmail();

    Map recieveMessage(String email);

    Map sendMessage(String email);

    Map agreeLend(LendBO bo);

    Map refuseLend(LendBO bo);
}
