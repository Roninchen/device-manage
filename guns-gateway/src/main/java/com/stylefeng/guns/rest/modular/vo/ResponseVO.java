package com.stylefeng.guns.rest.modular.vo;

import lombok.Data;

/**
 * @Description ResponseVO
 * @date 2018/11/10 14:26
 * @param
 * @return
 * @author yd
 */
@Data
public class ResponseVO<M> {

    //返回状态【0-成功，1-业务失败，999-表示系统异常】
    private int code;
    //返回信息
    private String message;
    //返回数据实体
    private M data;

    private ResponseVO(){}

    public static<M> ResponseVO success(int nowPage,int totalPage,String imgPre,M m){
        ResponseVO responseVO = new ResponseVO();
        responseVO.setCode(200);
        responseVO.setData(m);

        return responseVO;
    }

    public static<M> ResponseVO success(M m){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setCode(200);
        responseVo.setData(m);

        return responseVo;
    }

    public static<M> ResponseVO success(String msg){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setCode(200);
        responseVo.setMessage(msg);

        return responseVo;
    }
    public static<M> ResponseVO serviceFail(String msg){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setCode(400);
        responseVo.setMessage(msg);

        return responseVo;
    }

    public static<M> ResponseVO appFail(String msg){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setCode(999);
        responseVo.setMessage(msg);

        return responseVo;
    }

}
