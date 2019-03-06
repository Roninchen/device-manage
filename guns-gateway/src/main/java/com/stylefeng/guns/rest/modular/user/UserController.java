package com.stylefeng.guns.rest.modular.user;

import com.stylefeng.guns.api.user.UserAPI;
import com.stylefeng.guns.api.user.vo.RegisterBo;
import com.stylefeng.guns.api.user.vo.UserInfoModel;
import com.stylefeng.guns.api.user.vo.UserInfoVo;
import com.stylefeng.guns.api.vo.ResponseReturn;
import com.stylefeng.guns.rest.common.CurrentUser;
import com.stylefeng.guns.api.vo.ResponseVO;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RequestMapping("/user/")
@RestController
@Api(tags = "用户模块", description = "用户模块")
public class UserController {

    @Autowired
    private UserAPI userAPI;


    @RequestMapping(value="register",method = RequestMethod.POST)
    @ApiOperation(value = "用户注册", notes = "用户注册")
    public Map register(@RequestBody RegisterBo registerBo){
        if(registerBo.getUserName() == null || registerBo.getUserName().trim().length()==0){
            return ResponseReturn.failed("用户名不能为空");
        }
        if(registerBo.getUserPwd() == null || registerBo.getUserPwd().trim().length()==0){
            return ResponseReturn.failed("密码不能为空");
        }
        int register = userAPI.register(registerBo);
        switch (register){
            case 0:
                return ResponseReturn.success("注册成功！");
            case 1:
                return ResponseReturn.failed("姓名和系统id必须对应，用户不是系统用户无权限注册");
            case 2:
                return ResponseReturn.failed("账号已存在");
            case 3:
                return ResponseReturn.failed("操作失败，请重试！");
        }
        return ResponseReturn.failed("操作失败，请重试！");


        //        if (userModel.getPhone()==null || userModel.getPhone().trim().length()==0){
//            return ResponseVO.serviceFail("手机号不能为空");
//        }
//        String regex = "\\d{4}$";
//        Pattern p = Pattern.compile(regex);
//        Matcher m = p.matcher(userModel.getCode());
//        boolean isMatch = m.matches();
//        if (!isMatch) {
//            return ResponseVO.serviceFail("验证码格式错误");
//        }
//
//        boolean isSuccess = userAPI.register(userModel);
//        if(isSuccess){
//            return ResponseVO.success("注册成功");
//        }else{
//            return ResponseVO.serviceFail("注册失败");
//        }
    }

    @RequestMapping(value="check",method = RequestMethod.POST)
    public Map check(String username){
        if(username!=null && username.trim().length()>0){
            // 当返回true的时候，表示用户名可用
            System.out.println("userApi:"+userAPI);
            boolean notExists = userAPI.checkUsername(username);
            if (notExists){
                return ResponseReturn.success("用户名不存在");
            }else{
                return ResponseReturn.failed("用户名已存在");
            }

        }else{
            return ResponseReturn.failed("用户名不能为空");
        }
    }

    @RequestMapping(value="logout",method = RequestMethod.GET)
    public Map logout(){
        /*
            应用：
                1、前端存储JWT 【七天】 ： JWT的刷新
                2、服务器端会存储活动用户信息【30分钟】
                3、JWT里的userId为key，查找活跃用户
            退出：
                1、前端删除掉JWT
                2、后端服务器删除活跃用户缓存
            现状：
                1、前端删除掉JWT
         */


        return ResponseReturn.success("用户退出成功");
    }


    @RequestMapping(value="getUserInfo",method = RequestMethod.GET)
    public Map getUserInfo(){
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        if(userId != null && userId.trim().length()>0){
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            UserInfoVo userInfo = userAPI.getUserInfo(uuid);
            if(userInfo!=null){
                return ResponseReturn.success(userInfo);
            }else{
                return ResponseReturn.failed("用户信息查询失败");
            }
        }else{
            return ResponseReturn.failed("用户未登陆");
        }
    }

    @RequestMapping(value="updateUserInfo",method = RequestMethod.POST)
    public Map updateUserInfo(UserInfoModel userInfoModel){
        // 获取当前登陆用户
        String userId = CurrentUser.getCurrentUser();
        if(userId != null && userId.trim().length()>0){
            // 将用户ID传入后端进行查询
            int uuid = Integer.parseInt(userId);
            // 判断当前登陆人员的ID与修改的结果ID是否一致
            if(uuid != userInfoModel.getUuid()){
                return ResponseReturn.failed("请修改您个人的信息");
            }

            UserInfoModel userInfo = userAPI.updateUserInfo(userInfoModel);
            if(userInfo!=null){
                return ResponseReturn.success(userInfo);
            }else{
                return ResponseReturn.failed("用户信息修改失败");
            }
        }else{
            return ResponseReturn.failed("用户未登陆");
        }
    }

}

