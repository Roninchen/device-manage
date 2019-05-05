package com.stylefeng.guns.api.device;

import com.stylefeng.guns.api.device.bo.DeviceBorrowBO;
import com.stylefeng.guns.api.device.bo.LendBO;
import com.stylefeng.guns.api.device.bo.PageBO;
import com.stylefeng.guns.api.device.vo.DeviceVo;

import java.util.Map;

public interface DeviceServiceApi {

    DeviceVo getDeviceByEnterpriseNo(String enterpriseNo);

    Map borrowDevice(DeviceBorrowBO deviceBorrowBO);

    Map addEmail();

    Map recieveMessage(String email,PageBO bo);

    Map sendMessage(String email,PageBO bo);

    Map agreeLend(LendBO bo);

    Map refuseLend(LendBO bo);

    Map getAllFixAsset2AssertInfo();

    Map homepage(PageBO bo);

    Map likeSearch(String context);

    Map hold(PageBO pageBO);

    Map history(String enterpriseNo);

    Map opHistory();
}
