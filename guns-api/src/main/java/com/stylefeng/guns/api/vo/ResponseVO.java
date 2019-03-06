package com.stylefeng.guns.api.vo;

import java.io.Serializable;

/**
 * @Description ResponseVO
 * @date 2018/11/10 14:26
 * @param
 * @return
 * @author yd
 */
public class ResponseVO<T> implements Serializable {

    //返回状态【0-成功，1-业务失败，999-表示系统异常】
    private int code;
    //返回信息
    private String message;
    //返回数据实体
    private T data;

    private ResponseVO(){
        super();
    }

    public static<T> ResponseVO success(T m){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setCode(200);
        responseVo.setData(m);

        return responseVo;
    }

    public static<T> ResponseVO success(String msg){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setCode(200);
        responseVo.setMessage(msg);

        return responseVo;
    }
    public static<T> ResponseVO serviceFail(String msg){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setCode(400);
        responseVo.setMessage(msg);

        return responseVo;
    }

    public static<T> ResponseVO appFail(String msg){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setCode(999);
        responseVo.setMessage(msg);

        return responseVo;
    }
    public static<T> ResponseVO success(T m,String msg) {
        ResponseVO responseVo = new ResponseVO();
        responseVo.setCode(200);
        responseVo.setData(m);
        responseVo.setMessage(msg);
        return responseVo;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "ResponseVO{" + "code=" + code + ", message='" + message + '\'' + ", data=" + data + '}';
    }
}
