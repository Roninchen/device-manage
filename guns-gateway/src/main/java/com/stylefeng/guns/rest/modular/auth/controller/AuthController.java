package com.stylefeng.guns.rest.modular.auth.controller;

import com.stylefeng.guns.api.user.vo.UserInfoVo;
import com.stylefeng.guns.api.vo.ResponseReturn;
import com.stylefeng.guns.rest.modular.auth.controller.dto.AuthRequest;
import com.stylefeng.guns.rest.modular.auth.controller.dto.AuthResponse;
import com.stylefeng.guns.rest.modular.auth.controller.dto.LoginSuccessVo;
import com.stylefeng.guns.rest.modular.auth.util.JwtTokenUtil;
import com.stylefeng.guns.rest.modular.user.serviceImpl.UserService;
import com.stylefeng.guns.api.vo.ResponseVO;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 请求验证的
 *
 * @author fengshuonan
 * @Date 2017/8/24 14:22
 */
@Api(tags = "用户登录", description = "用户登录")
@RestController
public class AuthController {

    public static final long KEEP_LIVE_TIME = 7*24*60*60*1000;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private UserService userAPI;

//    @Resource(name = "simpleValidator")
//    private IReqValidator reqValidator;
    @ApiOperation(value = "用户登录", notes = "用户登录")
    @PostMapping(value = "${jwt.auth-path}")
    public Map createAuthenticationToken(@RequestBody AuthRequest authRequest) {

        boolean validate = true;
        UserInfoVo user = userAPI.login(authRequest.getEmail(),authRequest.getPassword());
        int userId = user.getId().intValue();
        if (userId==0){
            validate=false;
        }
        if (validate) {
            //
            final String randomKey = jwtTokenUtil.getRandomKey();
            final String token = jwtTokenUtil.generateToken(""+userId, randomKey);
            LoginSuccessVo loginSuccessVo = new LoginSuccessVo();
//            loginSuccessVo.setAuthResponse(new AuthResponse(token, randomKey));
            loginSuccessVo.setAuthResponse(new AuthResponse(token, System.currentTimeMillis()+KEEP_LIVE_TIME,randomKey));
            user.setId(0);
            loginSuccessVo.setUserInfoVo(user);
            return ResponseReturn.success(loginSuccessVo);
        } else {
            return ResponseReturn.failed("用户名或密码错误");
        }
    }
}
