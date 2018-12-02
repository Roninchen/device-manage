package com.stylefeng.guns.modular.system.warpper;

import com.stylefeng.guns.core.base.warpper.BaseControllerWarpper;
import com.stylefeng.guns.core.common.constant.factory.ConstantFactory;

import java.util.List;
import java.util.Map;

/**
 * @note:
 * @author:fine
 * @date:2018/12/2 12:45 PM
 */
public class FixAssetWrapper extends BaseControllerWarpper {

    public FixAssetWrapper(List<Map<String, Object>> list) {
        super(list);
    }

    @Override
    protected void warpTheMap(Map<String, Object> map) {
        map.put("statusName", ConstantFactory.me().getManageStatusName((Integer) map.get("status")));
        map.put("isFixName", ConstantFactory.me().getFixStatusName((Integer) map.get("is_fix")));
        map.put("typeName", ConstantFactory.me().getDeviceTypeName((Integer) map.get("type")));
        map.put("deviceStatusName", ConstantFactory.me().getDeviceStatusName((Integer) map.get("device_status")));
    }
}
