/*
 * Copyright (c) 2001-2018 GuaHao.com Corporation Limited. All rights reserved.
 * This software is the confidential and proprietary information of GuaHao Company.
 * ("Confidential Information").
 * You shall not disclose such Confidential Information and shall use it only
 * in accordance with the terms of the license agreement you entered into with GuaHao.com.
 */
package com.stylefeng.guns.rest.modular.user.serviceImpl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.stylefeng.guns.api.device.DeviceServiceApi;
import com.stylefeng.guns.api.device.bo.DeviceBorrowBO;
import com.stylefeng.guns.api.device.vo.DeviceVo;
import com.stylefeng.guns.api.vo.ResponseVO;
import com.stylefeng.guns.rest.common.persistence.dao.DeviceFlowMapper;
import com.stylefeng.guns.rest.common.persistence.dao.FixAssetMapper;
import com.stylefeng.guns.rest.common.persistence.dao.UserInfoMapper;
import com.stylefeng.guns.rest.common.persistence.dao.UserMapper;
import com.stylefeng.guns.rest.common.persistence.model.DeviceFlow;
import com.stylefeng.guns.rest.common.persistence.model.FixAsset;
import com.stylefeng.guns.rest.common.persistence.model.User;
import com.stylefeng.guns.rest.common.persistence.model.UserInfo;
import com.stylefeng.guns.rest.common.utils.DateUtil;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

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
    @Autowired
    private DeviceFlowMapper deviceFlowMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private UserInfoMapper userInfoMapper;
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

    @Override
    public ResponseVO borrowDevice(DeviceBorrowBO BO) {
        FixAsset fixAsset = new FixAsset();
        fixAsset.setEnterpriseNo(BO.getEnterpriseNo());
        FixAsset fix = fixAssetMapper.selectOne(fixAsset);

        User user = new User();
        user.setEmail(BO.getEmail());
        User borrowUser = userMapper.selectOne(user);
        //查询不到用户信息
        if (borrowUser==null){
            ResponseVO.serviceFail("查询不到用户信息");
        }
        //查不到设备
        if (fix==null){
            ResponseVO.serviceFail("查不到设备");
        }

        List<DeviceFlow> deviceFlows = deviceFlowMapper.selectList(
            new EntityWrapper<DeviceFlow>().eq("device_id", BO.getEnterpriseNo()).eq("lend_to", BO.getEmail())
                .eq("status", 1));
        //借用申请已经发出，无需多次
        if (deviceFlows.size()>0){
            return ResponseVO.serviceFail("借用申请已经发出,无需多次申请!");
        }
        Long date = DateUtil.getTimeOfEastEight();
        DeviceFlow deviceFlow = new DeviceFlow();
        deviceFlow.setCreateTime(date);
        deviceFlow.setUpdateTime(date);
        deviceFlow.setStatus(1);
        deviceFlow.setRemark(BO.getRemark());
        deviceFlow.setLendToName(borrowUser.getUserName());
        deviceFlow.setLendFromName(fix.getOwner());
        deviceFlow.setDeviceName(fix.getDeviceName());
        deviceFlow.setDeviceId(fix.getEnterpriseNo());
        deviceFlow.setLendFrom(fix.getOwnerEmail());
        deviceFlow.setLendTo(user.getEmail());
        deviceFlowMapper.insert(deviceFlow);
        return ResponseVO.success("申请已发出,可以联系对方及时处理");
    }

    @Override
    public ResponseVO addEmail() {
        List<FixAsset> fixAssets = fixAssetMapper.selectList(null);
        List<UserInfo> userInfos = userInfoMapper.selectList(null);
        fixAssets.stream().map(fixAsset -> {
            List<UserInfo> us = userInfos.stream().filter(userInfo -> userInfo.getUserName().equals(fixAsset.getOwner())).collect(Collectors.toList());
            if (us.size()>0) {
                fixAsset.setOwnerEmail(us.get(0).getEmail());
            }
            return fixAsset;
        }).collect(Collectors.toList());
        fixAssetMapper.updateBatch1(fixAssets);

        return ResponseVO.success("ok");
    }

    @Override
    public ResponseVO recieveMessage(String email) {
        Set<String> set = new HashSet<>();
        set.add("update_time");
        List<DeviceFlow> lend_from = deviceFlowMapper
            .selectList(new EntityWrapper<DeviceFlow>().eq("lend_from", email).orderDesc(set));
        lend_from.stream().filter(lf->lf.getStatus()!=4).collect(Collectors.toList());
        return ResponseVO.success(lend_from);
    }

    @Override
    public ResponseVO sendMessage(String email) {
        Set<String> set = new HashSet<>();
        set.add("update_time");
        List<DeviceFlow> lend_from = deviceFlowMapper
            .selectList(new EntityWrapper<DeviceFlow>().eq("lend_to", email).orderDesc(set));
        return ResponseVO.success(lend_from);
    }
}
