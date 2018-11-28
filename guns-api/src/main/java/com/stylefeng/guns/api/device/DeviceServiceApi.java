package com.stylefeng.guns.api.device;

import com.stylefeng.guns.api.device.bo.DeviceBorrowBO;
import com.stylefeng.guns.api.device.bo.LendBO;
import com.stylefeng.guns.api.device.vo.DeviceVo;
import com.stylefeng.guns.api.vo.ResponseVO;

public interface DeviceServiceApi {

    DeviceVo getDeviceByEnterpriseNo(String enterpriseNo);

    ResponseVO borrowDevice(DeviceBorrowBO deviceBorrowBO);

    ResponseVO addEmail();

    ResponseVO recieveMessage(String email);

    ResponseVO sendMessage(String email);

    ResponseVO agreeLend(LendBO bo);
}