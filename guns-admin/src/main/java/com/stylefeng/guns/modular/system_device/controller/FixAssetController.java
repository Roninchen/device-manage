package com.stylefeng.guns.modular.system_device.controller;

import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.core.base.tips.ErrorTip;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.beans.factory.annotation.Autowired;
import com.stylefeng.guns.core.log.LogObjectHolder;
import org.springframework.web.bind.annotation.RequestParam;
import com.stylefeng.guns.modular.system.model.FixAsset;
import com.stylefeng.guns.modular.system_device.service.IFixAssetService;
import org.springframework.web.multipart.MultipartFile;

/**
 * 设备管理控制器
 *
 * @author fine
 * @Date 2018-11-30 17:55:52
 */
@Controller
@RequestMapping("/fixAsset")
public class FixAssetController extends BaseController {

    private String PREFIX = "/system_device/fixAsset/";

    @Autowired
    private IFixAssetService fixAssetService;

    /**
     * 跳转到设备管理首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "fixAsset.html";
    }

    /**
     * 跳转到添加设备管理
     */
    @RequestMapping("/fixAsset_add")
    public String fixAssetAdd() {
        return PREFIX + "fixAsset_add.html";
    }

    @RequestMapping("/fixAsset_adds")
    public String fixAssetAdds() {
        return PREFIX+"fixAsset_adds.html";
    }

    /**
     * 跳转到修改设备管理
     */
    @RequestMapping("/fixAsset_update/{fixAssetId}")
    public String fixAssetUpdate(@PathVariable Integer fixAssetId, Model model) {
        FixAsset fixAsset = fixAssetService.selectById(fixAssetId);
        model.addAttribute("item",fixAsset);
        LogObjectHolder.me().set(fixAsset);
        return PREFIX + "fixAsset_edit.html";
    }

    /**
     * 获取设备管理列表
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Object list(String condition) {
        return fixAssetService.selectList(null);
    }

    /**
     * 新增设备管理
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public Object add(FixAsset fixAsset) {
        fixAssetService.insert(fixAsset);
        return SUCCESS_TIP;
    }

    @RequestMapping(value = "/adds")
    @ResponseBody
    public Object adds(@RequestParam("file") MultipartFile multipartFile){


        if (multipartFile.isEmpty()) {

            return new ErrorTip(500,"空文件");
        }


        return SUCCESS_TIP;

    }

    /**
     * 删除设备管理
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer fixAssetId) {
        fixAssetService.deleteById(fixAssetId);
        return SUCCESS_TIP;
    }

    /**
     * 修改设备管理
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(FixAsset fixAsset) {
        fixAssetService.updateById(fixAsset);
        return SUCCESS_TIP;
    }

    /**
     * 设备管理详情
     */
    @RequestMapping(value = "/detail/{fixAssetId}")
    @ResponseBody
    public Object detail(@PathVariable("fixAssetId") Integer fixAssetId) {
        return fixAssetService.selectById(fixAssetId);
    }
}
