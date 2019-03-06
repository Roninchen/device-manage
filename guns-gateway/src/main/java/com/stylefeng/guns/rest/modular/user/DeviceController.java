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
import com.stylefeng.guns.api.user.vo.UserInfoVo;
import com.stylefeng.guns.api.vo.ResponseReturn;
import com.stylefeng.guns.api.vo.ResponseVO;
import com.stylefeng.guns.rest.common.CurrentUser;

import java.util.Map;

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
    public Map getDeviceByNo(@RequestParam(value = "enterpriseNo") String enterpriseNo){
        DeviceVo deviceByEnterpriseNo = deviceServiceApi.getDeviceByEnterpriseNo(enterpriseNo);
        return ResponseReturn.success(deviceByEnterpriseNo);
    }

    /**
     * 借用设备
     * @param deviceBorrowBO
     * @return
     */
    @PostMapping("borrow")
    public Map borrowDevice(@RequestBody DeviceBorrowBO deviceBorrowBO){
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
        Map map = deviceServiceApi.borrowDevice(deviceBorrowBO, userInfo.getEmail());
        return map;
    }
    @GetMapping("emailkmkmihghbhuihb")
    public Map addEmail(){
        Map map = deviceServiceApi.addEmail();
        return map;
    }

    /**
     * 收到的消息
     * @return
     */
    @GetMapping("recieve")
    public Map recieveMessage(){
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        if(userId != null && userId.trim().length()>0){
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            UserInfoVo userInfo = userAPI.getUserInfo(uuid);
            if(userInfo!=null){
                Map map = deviceServiceApi.recieveMessage(userInfo.getEmail());
                return map;
            }else{
                return ResponseReturn.failed("用户信息查询失败");
            }
        }else{
            return ResponseReturn.failed("用户未登陆");
        }
    }

    /**
     * 发出的消息
     * @return
     */
    @GetMapping("send")
    public Map sendMessage(){
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        if(userId != null && userId.trim().length()>0){
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            UserInfoVo userInfo = userAPI.getUserInfo(uuid);
            if(userInfo!=null){

                return deviceServiceApi.sendMessage(userInfo.getEmail());
            }else{
                return ResponseReturn.failed("用户信息查询失败");
            }
        }else{
            return ResponseReturn.failed("用户未登陆");
        }
    }

    /**
     * 同意借出设备
     * @param bo
     * @return
     */
    @PostMapping("lend")
    public Map agreeLend(@RequestBody LendBO bo){
       return deviceServiceApi.agreeLend(bo);

    }

    @PostMapping("refuse")
    public Map refuseLend(@RequestBody LendBO bo){
        return deviceServiceApi.refuseLend(bo);
    }



}
