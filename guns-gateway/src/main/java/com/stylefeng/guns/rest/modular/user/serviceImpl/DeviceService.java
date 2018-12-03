/*
 * Copyright (c) 2001-2018 GuaHao.com Corporation Limited. All rights reserved.
 * This software is the confidential and proprietary information of GuaHao Company.
 * ("Confidential Information").
 * You shall not disclose such Confidential Information and shall use it only
 * in accordance with the terms of the license agreement you entered into with GuaHao.com.
 */
package com.stylefeng.guns.rest.modular.user.serviceImpl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.stylefeng.guns.api.device.DeviceServiceApi;
import com.stylefeng.guns.api.device.bo.DeviceBorrowBO;
import com.stylefeng.guns.api.device.bo.LendBO;
import com.stylefeng.guns.api.device.bo.PageBO;
import com.stylefeng.guns.api.device.vo.DeviceVo;
import com.stylefeng.guns.api.device.vo.HomepageVO;
import com.stylefeng.guns.api.user.UserAPI;
import com.stylefeng.guns.api.user.vo.UserInfoVo;
import com.stylefeng.guns.api.vo.ResponseReturn;
import com.stylefeng.guns.rest.common.CurrentUser;
import com.stylefeng.guns.rest.common.persistence.dao.DeviceFlowMapper;
import com.stylefeng.guns.rest.common.persistence.dao.FixAssetMapper;
import com.stylefeng.guns.rest.common.persistence.dao.HistoryMapper;
import com.stylefeng.guns.rest.common.persistence.dao.UserInfoMapper;
import com.stylefeng.guns.rest.common.persistence.dao.UserMapper;
import com.stylefeng.guns.rest.common.persistence.model.DeviceFlow;
import com.stylefeng.guns.rest.common.persistence.model.FixAsset;
import com.stylefeng.guns.rest.common.persistence.model.History;
import com.stylefeng.guns.rest.common.persistence.model.User;
import com.stylefeng.guns.rest.common.persistence.model.UserInfo;
import com.stylefeng.guns.rest.common.utils.DateUtil;
import com.stylefeng.guns.rest.modular.es.FixAssetInfo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
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
    @Autowired
    private UserAPI userAPI;
    @Autowired
    private HistoryMapper historyMapper;
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
        deviceVo.setUpdateTime(fixAsset.getUpdateTime());
        deviceVo.setDeviceStatus(fixAsset.getDeviceStatus());
        deviceVo.setCharge(fixAsset.getCharge());
        deviceVo.setOwnerDepartment(userMapper.selectByEmail(fixAsset.getOwnerEmail()).getDepartment());
        deviceVo.setChargeDepartment(userMapper.selectByEmail(fixAsset.getChargeEmail()).getDepartment());

        return deviceVo;
    }

    @Override
    public Map borrowDevice(DeviceBorrowBO BO) {
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        UserInfoVo userInfo = new UserInfoVo();
        if(userId != null && userId.trim().length()>0){
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            userInfo = userAPI.getUserInfo(uuid);
            if(userInfo==null){
                return ResponseReturn.failed("获取用户信息失败");
            }
        }
        String email = userInfo.getEmail();
        FixAsset fixAsset = new FixAsset();
        fixAsset.setEnterpriseNo(BO.getEnterpriseNo());
        FixAsset fix = fixAssetMapper.selectOne(fixAsset);
        if (fix.getOwnerEmail().equals(userInfo.getEmail())){
            return ResponseReturn.failed("该设备已被你持有,无需向自己借用");
        }
        User user = new User();
        user.setEmail(email);
        User borrowUser = userMapper.selectOne(user);
        //查询不到用户信息
        if (borrowUser==null){
            ResponseReturn.failed("查询不到用户信息");
        }
        //查不到设备
        if (fix==null){
            ResponseReturn.failed("查不到设备");
        }

        List<DeviceFlow> deviceFlows = deviceFlowMapper.selectList(
            new EntityWrapper<DeviceFlow>().eq("device_id", BO.getEnterpriseNo()).eq("lend_to", email)
                .eq("status", 1));
        //借用申请已经发出，无需多次
        if (deviceFlows.size()>0){
            return ResponseReturn.failed("借用申请已经发出,无需多次申请!");
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

        //历史记录
        History history = new History();
        history.setConnectPerson(fix.getOwnerEmail());
        history.setTypeName("发起借用操作");
        history.setOperatorName(userInfo.getUserName());
        history.setDeviceName(fix.getDeviceName());
        history.setDeviceId(fix.getEnterpriseNo());
        history.setCreateTime(DateUtil.getTimeOfEastEight());
        history.setConnectPersonName(fix.getOwner());
        history.setType(1);
        history.setOperator(userInfo.getEmail());

        deviceFlowMapper.insert(deviceFlow);
        historyMapper.insert(history);
        return ResponseReturn.success("申请已发出,可以联系对方及时处理");
    }

    @Override
    public Map addEmail() {
        List<FixAsset> fixAssets = fixAssetMapper.selectList(null);
        List<UserInfo> userInfos = userInfoMapper.selectList(null);
        fixAssets.stream().map(fixAsset -> {
            List<UserInfo> us = userInfos.stream().filter(userInfo -> userInfo.getUserName().equals(fixAsset.getOwner())).collect(Collectors.toList());
            if (us.size()>0) {
                fixAsset.setOwnerEmail(us.get(0).getEmail());
                fixAsset.setChargeEmail(us.get(0).getEmail());
            }
            return fixAsset;
        }).collect(Collectors.toList());
        fixAssetMapper.updateBatch1(fixAssets);

        return ResponseReturn.success("ok");
    }

    @Override
    public Map recieveMessage(String email) {
        Set<String> set = new HashSet<>();
        set.add("update_time");
        List<DeviceFlow> lend_from = deviceFlowMapper
            .selectList(new EntityWrapper<DeviceFlow>().eq("lend_from", email).orderDesc(set));
        lend_from.stream().filter(lf->lf.getStatus()!=4).collect(Collectors.toList());
        return ResponseReturn.success(lend_from);
    }

    @Override
    public Map sendMessage(String email) {
        Set<String> set = new HashSet<>();
        set.add("update_time");
        List<DeviceFlow> lend_from = deviceFlowMapper
            .selectList(new EntityWrapper<DeviceFlow>().eq("lend_to", email).orderDesc(set));
        return ResponseReturn.success(lend_from);
    }

    @Override
    public Map agreeLend(LendBO bo) {
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        UserInfoVo userInfo = new UserInfoVo();
        if (userId != null && userId.trim().length() > 0) {
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            userInfo = userAPI.getUserInfo(uuid);
        }else {
            return ResponseReturn.failed("用户信息查询失败");
        }

        if (bo.getAgree().intValue()==1) {
            List<DeviceFlow> deviceFlows = deviceFlowMapper.selectList(
                new EntityWrapper<DeviceFlow>().eq("device_id", bo.getEnterpriseNo()).eq("status", 1)
                    .eq("lend_from", userInfo.getEmail()));
            if (deviceFlows.size() < 1) {
                return  ResponseReturn.failed("设备状态不对");
            }
            List<DeviceFlow> flows = deviceFlows.stream().filter(d -> d.getLendTo().equals(bo.getLendTo())).collect(Collectors.toList());
            //状态更新为4，4设备已经借给其他人
            List<DeviceFlow> collect = deviceFlows.stream().filter(d -> !d.getLendTo().equals(bo.getLendTo())).collect(Collectors.toList());
            collect.forEach(deviceFlow -> deviceFlow.setStatus(4));

            DeviceFlow deviceFlow = flows.get(0);
            deviceFlow.setStatus(2);
            collect.add(deviceFlow);

            FixAsset fixAssetCond = new FixAsset();
            fixAssetCond.setEnterpriseNo(bo.getEnterpriseNo());

            FixAsset fixAsset = fixAssetMapper.selectOne(fixAssetCond);
            FixAsset fixAssetUpdate = new FixAsset();

            //借用人信息
            User user = new User();
            user.setEmail(bo.getLendTo());
            User borrowUser = userMapper.selectOne(user);
            fixAssetUpdate.setId(fixAsset.getId());
            fixAssetUpdate.setOwnerEmail(borrowUser.getEmail());
            fixAssetUpdate.setOwner(borrowUser.getUserName());
            fixAssetUpdate.setUpdateTime(DateUtil.getTimeOfEastEight());

            //历史记录
            History history = new History();
            history.setConnectPerson(borrowUser.getEmail());
            history.setTypeName("同意借用操作");
            history.setOperatorName(userInfo.getUserName());
            history.setDeviceName(deviceFlow.getDeviceName());
            history.setDeviceId(deviceFlow.getDeviceId());
            history.setCreateTime(DateUtil.getTimeOfEastEight());
            history.setConnectPersonName(borrowUser.getUserName());
            history.setType(2);
            history.setOperator(userInfo.getEmail());
            history.setConnectPersonDepartment(borrowUser.getDepartment());

            fixAssetMapper.updateById(fixAssetUpdate);
            deviceFlowMapper.updateBatch1(collect);
            historyMapper.insert(history);
            return ResponseReturn.success("借用成功!");
        }else{
            List<DeviceFlow> deviceFlows = deviceFlowMapper
                .selectList(new EntityWrapper<DeviceFlow>().eq("device_id", bo.getEnterpriseNo()).eq("status", 1).eq("lend_from",userInfo.getEmail()));
            if (deviceFlows.size()<1){
                return  ResponseReturn.failed("设备状态不对");
            }
            List<DeviceFlow> collect = deviceFlows.stream()
                .filter(deviceFlow -> deviceFlow.getLendTo().equals(bo.getLendTo())).collect(Collectors.toList());
            if (collect.size()<1){
                return  ResponseReturn.failed("设备状态不对");
            }
            DeviceFlow device = collect.get(0);

            DeviceFlow deviceFlow = new DeviceFlow();
            deviceFlow.setId(device.getId());
            deviceFlow.setStatus(3);

            //历史记录
            History history = new History();
            history.setConnectPerson(device.getLendTo());
            history.setTypeName("拒绝借用操作");
            history.setOperatorName(userInfo.getUserName());
            history.setDeviceName(device.getDeviceName());
            history.setDeviceId(device.getDeviceId());
            history.setCreateTime(DateUtil.getTimeOfEastEight());
            history.setConnectPersonName(device.getLendToName());
            history.setType(3);
            history.setOperator(userInfo.getEmail());

            deviceFlowMapper.updateById(deviceFlow);
            historyMapper.insert(history);
            return ResponseReturn.success("拒绝成功");
        }
    }

    @Override
    public Map refuseLend(LendBO bo) {
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        UserInfoVo userInfo = new UserInfoVo();
        if (userId != null && userId.trim().length() > 0) {
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            userInfo = userAPI.getUserInfo(uuid);
        }else {
            return ResponseReturn.failed("用户信息查询失败");
        }

        List<DeviceFlow> deviceFlows = deviceFlowMapper
            .selectList(new EntityWrapper<DeviceFlow>().eq("device_id", bo.getEnterpriseNo()).eq("status", 1).eq("lend_from",userInfo.getEmail()));
        if (deviceFlows.size()<1){
            return ResponseReturn.failed("设备状态不对");
        }
        List<DeviceFlow> collect = deviceFlows.stream()
            .filter(deviceFlow -> deviceFlow.getLendTo().equals(bo.getLendTo())).collect(Collectors.toList());
        if (collect.size()<1){
            return ResponseReturn.failed("设备状态不对");
        }
        DeviceFlow deviceFlow = new DeviceFlow();
        deviceFlow.setId(collect.get(0).getId());
        deviceFlow.setStatus(3);
        deviceFlowMapper.updateById(deviceFlow);
        return ResponseReturn.success("拒绝成功");
    }

    @Override
    public Map getAllFixAsset2AssertInfo() {
        List<FixAsset> fixAssets = fixAssetMapper.selectList(null);
        List<FixAssetInfo> fixAssetInfos = new ArrayList<>();
        fixAssets.forEach(fixAsset -> fixAssetInfos.add(poToAssetInfo(fixAsset)));
        Map<String,List<FixAssetInfo>> map = new HashMap<>();
        map.put("fixAssets",fixAssetInfos);
        return map;
    }

    @Override
    public Map homepage(PageBO bo) {
        Page page = new Page();
        page.setCurrent(bo.getPageNo());
        page.setSize(bo.getPageSize());
        List<FixAsset> fixAssets = fixAssetMapper.selectPage(page, null);
        List<HomepageVO> list = fixAssets.stream().map(DeviceService::fixAsset2Vo).collect(Collectors.toList());
        page.setRecords(list);

        return ResponseReturn.success(page);
    }

    @Override
    public Map likeSearch(String context) {
        Page page = new Page<>();
        page.setSize(100);
        page.setCurrent(1);
        List<HomepageVO> homepageVOPage = fixAssetMapper.likeSearch(page, context);
        page.setRecords(homepageVOPage);
        return ResponseReturn.success(page);
    }

    @Override
    public Map hold(PageBO pageBO) {
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        UserInfoVo userInfo = new UserInfoVo();
        if (userId != null && userId.trim().length() > 0) {
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            userInfo = userAPI.getUserInfo(uuid);
        }else {
            return ResponseReturn.failed("用户信息查询失败");
        }
        Page page = new Page();
        page.setCurrent(pageBO.getPageNo());
        page.setSize(pageBO.getPageSize());

        List<FixAsset> owner_email = fixAssetMapper
            .selectPage(page,new EntityWrapper<FixAsset>().eq("owner_email", userInfo.getEmail()));
        page.setRecords(owner_email);
        return ResponseReturn.success(page);
    }

    @Override
    public Map history(String enterpriseNo) {
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        UserInfoVo userInfo = new UserInfoVo();
        if (userId != null && userId.trim().length() > 0) {
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            userInfo = userAPI.getUserInfo(uuid);
        }else {
            return ResponseReturn.failed("用户信息查询失败");
        }
        List<History> histories = historyMapper
            .selectList(new EntityWrapper<History>().eq("device_id",enterpriseNo).eq("type",2).orderBy("create_time", false));
        return ResponseReturn.success(histories);
    }

    @Override
    public Map opHistory() {
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        UserInfoVo userInfo = new UserInfoVo();
        if (userId != null && userId.trim().length() > 0) {
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            userInfo = userAPI.getUserInfo(uuid);
        }else {
            return ResponseReturn.failed("用户信息查询失败");
        }
        List<History> histories = historyMapper
            .selectList(new EntityWrapper<History>().eq("operator",userInfo.getEmail()).orderBy("create_time", false));
        return ResponseReturn.success(histories);
    }

    private static FixAssetInfo poToAssetInfo(FixAsset fixAsset){
        FixAssetInfo fixAssetInfo = new FixAssetInfo();
        if (fixAsset==null){
            return null;
        }
        fixAssetInfo.setCharge(fixAsset.getCharge());
        fixAssetInfo.setUpdateTime(fixAsset.getUpdateTime());
        fixAssetInfo.setType(fixAsset.getType());
        fixAssetInfo.setTechniqueTarget(fixAsset.getTechniqueTarget());
        fixAssetInfo.setStatus(fixAsset.getStatus());
        fixAssetInfo.setOwnerEmail(fixAsset.getOwnerEmail());
        fixAssetInfo.setManufactor(fixAsset.getManufactor());
        fixAssetInfo.setIsFix(fixAsset.getIsFix());
        fixAssetInfo.setEnterpriseNo(fixAsset.getEnterpriseNo());
        fixAssetInfo.setDeviceName(fixAsset.getDeviceName());
        fixAssetInfo.setDeviceModel(fixAsset.getDeviceModel());
        fixAssetInfo.setCreateTime(fixAsset.getCreateTime());
        fixAssetInfo.setChargeEmail(fixAsset.getChargeEmail());
        fixAssetInfo.setEnterpriseNo(fixAsset.getEnterpriseNo());
        fixAssetInfo.setId(fixAsset.getId());
        return fixAssetInfo;
    }

    private static HomepageVO fixAsset2Vo(FixAsset fixAsset){
        HomepageVO homepageVO = new HomepageVO();
        homepageVO.setDeviceModel(fixAsset.getDeviceModel());
        homepageVO.setEnterpriseNo(fixAsset.getEnterpriseNo());
        homepageVO.setDeviceName(fixAsset.getDeviceName());
        homepageVO.setTechniqueTarget(fixAsset.getTechniqueTarget());
        homepageVO.setOwner(fixAsset.getOwner());
        homepageVO.setManufactor(fixAsset.getManufactor());
        homepageVO.setCharge(fixAsset.getCharge());
        return homepageVO;
    }

}
