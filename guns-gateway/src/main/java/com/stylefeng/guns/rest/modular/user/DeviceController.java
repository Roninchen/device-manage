/*
 * Copyright (c) 2001-2018 GuaHao.com Corporation Limited. All rights reserved.
 * This software is the confidential and proprietary information of GuaHao Company.
 * ("Confidential Information").
 * You shall not disclose such Confidential Information and shall use it only
 * in accordance with the terms of the license agreement you entered into with GuaHao.com.
 */
package com.stylefeng.guns.rest.modular.user;

import com.stylefeng.guns.api.device.DeviceServiceApi;
import com.stylefeng.guns.api.device.bo.DeviceBorrowBO;
import com.stylefeng.guns.api.device.bo.LendBO;
import com.stylefeng.guns.api.device.vo.DeviceVo;
import com.stylefeng.guns.api.user.UserAPI;
import com.stylefeng.guns.api.user.vo.UserInfoModel;
import com.stylefeng.guns.api.user.vo.UserInfoVo;
import com.stylefeng.guns.api.vo.ResponseVO;
import com.stylefeng.guns.rest.common.CurrentUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * TODO
 *
 * @author 17262
 * @version V1.0
 * @since 2018-11-23 22:03
 */
@RestController
@RequestMapping("/device")
public class DeviceController {

    @Autowired
    private DeviceServiceApi deviceServiceApi;
    @Autowired
    private UserAPI userAPI;

    /**
     * 获取设备
     * @param enterpriseNo
     * @return
     */
    @GetMapping("get")
    public ResponseVO getDeviceByNo(@RequestParam(value = "enterpriseNo") String enterpriseNo){
        DeviceVo deviceByEnterpriseNo = deviceServiceApi.getDeviceByEnterpriseNo(enterpriseNo);
        return ResponseVO.success(deviceByEnterpriseNo);
    }

    /**
     * 借用设备
     * @param deviceBorrowBO
     * @return
     */
    @PostMapping("borrow")
    public ResponseVO borrowDevice(@RequestBody DeviceBorrowBO deviceBorrowBO){
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        if(userId != null && userId.trim().length()>0){
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            UserInfoVo userInfo = userAPI.getUserInfo(uuid);
            if(userInfo==null){
            return ResponseVO.serviceFail("获取用户信息失败");
            }
            deviceBorrowBO.setEmail(userInfo.getEmail());
        }
        ResponseVO responseVO = deviceServiceApi.borrowDevice(deviceBorrowBO);
        return responseVO;
    }
    @GetMapping("emailsadfasdasdasdsda4523")
    public ResponseVO addEmail(){
        ResponseVO responseVO =deviceServiceApi.addEmail();
        return responseVO;
    }

    /**
     * 收到的消息
     * @return
     */
    @GetMapping("recieve")
    public ResponseVO recieveMessage(){
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        if(userId != null && userId.trim().length()>0){
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            UserInfoVo userInfo = userAPI.getUserInfo(uuid);
            if(userInfo!=null){
                ResponseVO responseVO = deviceServiceApi.recieveMessage(userInfo.getEmail());
                return responseVO;
            }else{
                return ResponseVO.appFail("用户信息查询失败");
            }
        }else{
            return ResponseVO.serviceFail("用户未登陆");
        }
    }

    /**
     * 发出的消息
     * @return
     */
    @GetMapping("send")
    public ResponseVO sendMessage(){
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        if(userId != null && userId.trim().length()>0){
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            UserInfoVo userInfo = userAPI.getUserInfo(uuid);
            if(userInfo!=null){
                ResponseVO responseVO = deviceServiceApi.sendMessage(userInfo.getEmail());
                return responseVO;
            }else{
                return ResponseVO.appFail("用户信息查询失败");
            }
        }else{
            return ResponseVO.serviceFail("用户未登陆");
        }
    }

    /**
     * 同意借出设备
     * @param bo
     * @return
     */
    @PostMapping("lend")
    public ResponseVO agreeLend(@RequestBody LendBO bo){
        ResponseVO responseVO = deviceServiceApi.agreeLend(bo);
        return responseVO;
    }
}
