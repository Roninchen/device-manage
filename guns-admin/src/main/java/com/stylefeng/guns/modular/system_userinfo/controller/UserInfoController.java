package com.stylefeng.guns.modular.system_userinfo.controller;

import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.core.base.tips.ErrorTip;
import com.stylefeng.guns.util.ExcelUtil;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import com.stylefeng.guns.core.log.LogObjectHolder;
import com.stylefeng.guns.modular.system.model.UserInfo;
import com.stylefeng.guns.modular.system_userinfo.service.IUserInfoService;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.sql.JDBCType;
import java.util.Collections;
import java.util.List;

/**
 * 用户信息管理控制器
 *
 * @author fengshuonan
 * @Date 2018-11-29 00:25:04
 */
@Controller
@RequestMapping("/userInfo")
public class UserInfoController extends BaseController {

    private String PREFIX = "/system_userinfo/userInfo/";

    @Autowired
    private IUserInfoService userInfoService;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * 跳转到用户信息管理首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "userInfo.html";
    }

    /**
     * 跳转到添加用户信息管理
     */
    @RequestMapping("/userInfo_add")
    public String userInfoAdd() {
        return PREFIX + "userInfo_add.html";
    }

    @RequestMapping("/userInfo_adds")
    public String userInfosAdd() {
        return PREFIX + "userInfo_adds.html";
    }

    /**
     * 跳转到修改用户信息管理
     */
    @RequestMapping("/userInfo_update/{userInfoId}")
    public String userInfoUpdate(@PathVariable Integer userInfoId, Model model) {
        UserInfo userInfo = userInfoService.selectById(userInfoId);
        model.addAttribute("item", userInfo);
        LogObjectHolder.me().set(userInfo);
        return PREFIX + "userInfo_edit.html";
    }

    /**
     * 获取用户信息管理列表
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Object list(String condition) {
        return userInfoService.selectList(null);
    }

    /**
     * 新增用户信息管理
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public Object add(UserInfo userInfo) {
        userInfoService.insert(userInfo);
        return SUCCESS_TIP;
    }

    /*
     *上传文件
     */
    @Transactional
    @PostMapping(value = "/adds")
    @ResponseBody
    public Object adds(@RequestParam("file") MultipartFile multipartFile) throws IOException {

        if (multipartFile.isEmpty()) {
            return new ErrorTip(500, "文件错误");
        }


        List<UserInfo> userInfos = ExcelUtil.resolveStream(multipartFile.getInputStream(), multipartFile.getOriginalFilename(), UserInfo.class);

        if (CollectionUtils.isEmpty(userInfos)) {
            return new ErrorTip(500,"没有数据");
        }

        jdbcTemplate.execute("DELETE FROM user_info");

        userInfoService.insertBatch(userInfos);


        return SUCCESS_TIP;
    }

    /**
     * 删除用户信息管理
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer userInfoId) {
        userInfoService.deleteById(userInfoId);
        return SUCCESS_TIP;
    }

    /**
     * 修改用户信息管理
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(UserInfo userInfo) {
        userInfoService.updateById(userInfo);
        return SUCCESS_TIP;
    }

    /**
     * 用户信息管理详情
     */
    @RequestMapping(value = "/detail/{userInfoId}")
    @ResponseBody
    public Object detail(@PathVariable("userInfoId") Integer userInfoId) {
        return userInfoService.selectById(userInfoId);
    }
}
