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
import com.stylefeng.guns.rest.common.persistence.dao.*;
import com.stylefeng.guns.rest.common.persistence.model.*;
import com.stylefeng.guns.rest.common.utils.DateUtil;
import com.stylefeng.guns.rest.modular.es.FixAssetInfo;
import com.stylefeng.guns.websokcet.service.PushService;
import com.stylefeng.guns.websokcet.service.PushServiceImpl;

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
    @Autowired
    private PushService pushService;
    @Autowired
    private FixAssetNewMapper fixAssetNewMapper;
    @Override
    public DeviceVo getDeviceByEnterpriseNo(String enterpriseNo) {
        FixAssetNew fixAssetC =new FixAssetNew();
        fixAssetC.setEnterpriseNo(enterpriseNo);
        FixAssetNew fixAsset = fixAssetNewMapper.selectOne(fixAssetC);
        if (fixAsset==null){
            return null;
        }
        DeviceVo deviceVo = new DeviceVo();
        deviceVo.setDeviceModel(fixAsset.getDeviceModel());
        //deviceVo.setUuid(fixAsset.getUuid());
        deviceVo.setType(fixAsset.getType());
        deviceVo.setTechniqueTarget(fixAsset.getTechniqueTarget());
        deviceVo.setStatus(fixAsset.getStatus());
        List<DeviceFlow> deviceFlows = deviceFlowMapper.selectList(new EntityWrapper<DeviceFlow>().eq("device_id", fixAsset.getEnterpriseNo()).eq("status", "已同意"));
        if (deviceFlows.size()>0){
            deviceVo.setOwner(deviceFlows.get(0).getLendToName());
            deviceVo.setUpdateTime(deviceFlows.get(0).getUpdateTime());
            List<UserInfo> user_name = userInfoMapper.selectList(new EntityWrapper<UserInfo>().eq("user_name", deviceFlows.get(0).getLendToName()));
            if (user_name.size()>0) {
                deviceVo.setOwnerDepartment(user_name.get(0).getDepartment());
            }
        }
        deviceVo.setManufactor(fixAsset.getManufactor());
        // deviceVo.setIsFix(fixAsset.getIsFix());
        deviceVo.setEnterpriseNo(fixAsset.getEnterpriseNo());
        deviceVo.setDeviceName(fixAsset.getDeviceName());
        //deviceVo.setUpdateTime(fixAsset.getUpdateTime());
        //deviceVo.setDeviceStatus(fixAsset.getDeviceStatus());
        deviceVo.setCharge(fixAsset.getCharge());
        deviceVo.setChargeDepartment(fixAsset.getChargeDepartment());
        deviceVo.setAppraisal(fixAsset.getAppraisal());
        deviceVo.setValidDate(fixAsset.getValidDate());
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
        FixAssetNew fixAssetnew = new FixAssetNew();
        fixAssetnew.setEnterpriseNo(BO.getEnterpriseNo());
        FixAssetNew fix = fixAssetNewMapper.selectOne(fixAssetnew);
        if (fix==null){
            return  ResponseReturn.failed("设备不存在");
        }
        UserInfo chargeUser = userInfoMapper.selectByName(fix.getCharge());
        if (chargeUser==null){
            return  ResponseReturn.failed("设备负责人查询失败");
        }
        //设备流转状态,1待同意，2已同意，3已拒绝，4已被其他人借用
        List<DeviceFlow> deviceFlows1 = deviceFlowMapper.selectList(
                new EntityWrapper<DeviceFlow>().eq("device_id", BO.getEnterpriseNo()).eq("lend_to", email)
                        .eq("status", "已同意"));
        //借用申请已经发出，无需多次
        if (deviceFlows1.size()>0){
            return ResponseReturn.failed("设备被你持有,无需再次借用!");
        }
        UserInfo user = new UserInfo();
        user.setEmail(email);
        UserInfo borrowUser = userInfoMapper.selectOne(user);
        //查询不到用户信息
        if (borrowUser==null){
            ResponseReturn.failed("查询不到用户信息");
        }
        //查不到设备
        if (fix==null){
            ResponseReturn.failed("查不到设备");
        }
        //设备流转状态,1待同意，2已同意，3已拒绝，4已被其他人借用
        List<DeviceFlow> deviceFlows = deviceFlowMapper.selectList(
            new EntityWrapper<DeviceFlow>().eq("device_id", BO.getEnterpriseNo()).eq("lend_to", email)
                .eq("status", "待同意"));
        //借用申请已经发出，无需多次
        if (deviceFlows.size()>0){
            return ResponseReturn.failed("借用申请已经发出,无需多次申请!");
        }
        Long date = DateUtil.getTimeOfEastEight();
        DeviceFlow deviceFlow = new DeviceFlow();
        deviceFlow.setCreateTime(date);
        deviceFlow.setUpdateTime(date);
        deviceFlow.setStatus("待同意");
        deviceFlow.setRemark(BO.getRemark());
        deviceFlow.setLendToName(borrowUser.getUserName());
        deviceFlow.setLendFromName(chargeUser.getUserName());
        //向负责人借用
        deviceFlow.setLendFromName(chargeUser.getUserName());
        deviceFlow.setDeviceName(fix.getDeviceName());
        deviceFlow.setDeviceId(fix.getEnterpriseNo());
        //向负责人借用 deviceFlow.setLendFrom(fix.getOwnerEmail());
        deviceFlow.setLendFrom(chargeUser.getEmail());
        deviceFlow.setLendTo(user.getEmail());

        //历史记录
        History history = new History();
        // history.setConnectPerson(fix.getOwnerEmail());
        //向负责人借用
        history.setConnectPerson(chargeUser.getEmail());
        history.setTypeName("发起借用操作");
        history.setOperatorName(userInfo.getUserName());
        history.setDeviceName(fix.getDeviceName());
        history.setDeviceId(fix.getEnterpriseNo());
        history.setCreateTime(DateUtil.getTimeOfEastEight());
        //向负责人借用
        history.setConnectPersonName(fix.getCharge());
        history.setType(1);
        history.setOperator(userInfo.getEmail());

        deviceFlowMapper.insert(deviceFlow);
        historyMapper.insert(history);
        //socket推送,推送给被借用人
        pushService.sendNotification(chargeUser.getEmail(),1);
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
        //设备流转状态,1待同意，2已同意，3已拒绝，4已被其他人借用
        List<DeviceFlow> lend_from = deviceFlowMapper
            .selectList(new EntityWrapper<DeviceFlow>().eq("lend_from", email).orderDesc(set));
        lend_from.stream().filter(lf->lf.getStatus()!="已被其他人借用").collect(Collectors.toList());
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
        //借用人信息
        UserInfo user = new UserInfo();
        user.setEmail(bo.getLendTo());
        UserInfo borrowUser = userInfoMapper.selectOne(user);
        if (bo.getAgree().intValue()==1) {
            //设备流转状态,1待同意，2已同意，3已拒绝，4已被其他人借用
            List<DeviceFlow> deviceFlows = deviceFlowMapper.selectList(
                new EntityWrapper<DeviceFlow>().eq("device_id", bo.getEnterpriseNo()).eq("status", "待同意")
                    .eq("lend_from", userInfo.getEmail()));
            if (deviceFlows.size() < 1) {
                return  ResponseReturn.failed("设备状态不对");
            }
            List<DeviceFlow> flows = deviceFlows.stream().filter(d -> d.getLendTo().equals(bo.getLendTo())).collect(Collectors.toList());
            //状态更新为4，4设备已经借给其他人
            List<DeviceFlow> collect = deviceFlows.stream().filter(d -> !d.getLendTo().equals(bo.getLendTo())).collect(Collectors.toList());
            collect.forEach(deviceFlow -> deviceFlow.setStatus("已被其他人借用"));

            DeviceFlow deviceFlow = flows.get(0);
            deviceFlow.setStatus("已同意");
            collect.add(deviceFlow);


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

            deviceFlowMapper.updateBatch1(collect);
            historyMapper.insert(history);
            //socket推送,推送给借用人
            pushService.sendNotification(borrowUser.getEmail(),2);
            return ResponseReturn.success("借用成功!");
        }else{
            //设备流转状态,1待同意，2已同意，3已拒绝，4已被其他人借用
            List<DeviceFlow> deviceFlows = deviceFlowMapper
                .selectList(new EntityWrapper<DeviceFlow>().eq("device_id", bo.getEnterpriseNo()).eq("status", "待同意").eq("lend_from",userInfo.getEmail()));
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
            deviceFlow.setStatus("已拒绝");
            deviceFlow.setUpdateTime(DateUtil.getTimeOfEastEight());

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
            //socket推送,推送给借用人
            pushService.sendNotification(borrowUser.getEmail(),2);
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
        deviceFlow.setStatus("已拒绝");
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
        List<FixAssetNew> fixAssets = fixAssetNewMapper.selectPage(page, null);
        //List<HomepageVO> list = fixAssets.stream().map(DeviceService::fixAsset2Vo).collect(Collectors.toList());
        List<HomepageVO> list = new ArrayList<>();
        for (int i=0;i<fixAssets.size();i++){
            HomepageVO homepageVO = fixAsset2Vo(fixAssets.get(i));
            list.add(homepageVO);
        }
        page.setRecords(list);

        return ResponseReturn.success(page);
    }

    @Override
    public Map likeSearch(String context) {
        Page page = new Page<>();
        page.setSize(100);
        page.setCurrent(1);
        List<HomepageVO> homepageVOPage = fixAssetNewMapper.likeSearch(page, context);
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

        List<DeviceFlow> deviceFlows = deviceFlowMapper.selectPage(page, new EntityWrapper<DeviceFlow>().eq("lend_to", userInfo.getEmail()).eq("status", "已同意"));
        //List<FixAsset> owner_email = fixAssetMapper.selectPage(page,new EntityWrapper<FixAsset>().eq("owner_email", userInfo.getEmail()));
        List<FixAssetNew> owner_email = new ArrayList<>();
        for (int i=0;i<deviceFlows.size();i++){
            List<FixAssetNew> enterprise_no = fixAssetNewMapper.selectList(new EntityWrapper<FixAssetNew>().eq("enterprise_no", deviceFlows.get(0).getDeviceId()));
            if (enterprise_no.size()<1){
                continue;
            }
            owner_email.add(enterprise_no.get(0));
        }
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

    private  HomepageVO fixAsset2Vo(FixAssetNew fixAsset){
        HomepageVO homepageVO = new HomepageVO();
        homepageVO.setDeviceModel(fixAsset.getDeviceModel());
        homepageVO.setEnterpriseNo(fixAsset.getEnterpriseNo());
        homepageVO.setDeviceName(fixAsset.getDeviceName());
        homepageVO.setTechniqueTarget(fixAsset.getTechniqueTarget());
        List<DeviceFlow> deviceFlows = deviceFlowMapper.selectList(new EntityWrapper<DeviceFlow>().eq("device_id", fixAsset.getEnterpriseNo()).eq("status", "已同意"));
        if (deviceFlows.size()>0){
            homepageVO.setOwner(deviceFlows.get(0).getLendToName());
        }else {
            homepageVO.setOwner(fixAsset.getCharge());
        }
        homepageVO.setManufactor(fixAsset.getManufactor());
        homepageVO.setCharge(fixAsset.getCharge());
        return homepageVO;
    }

}
