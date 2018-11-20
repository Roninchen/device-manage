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
    private int status;
    //返回信息
    private String msg;
    //返回数据实体
    private M data;
    //图片前缀
    private String imgPre;
    // 分页使用
    private int nowPage;
    private int totalPage;

    private ResponseVO(){}

    public static<M> ResponseVO success(int nowPage,int totalPage,String imgPre,M m){
        ResponseVO responseVO = new ResponseVO();
        responseVO.setStatus(0);
        responseVO.setData(m);
        responseVO.setImgPre(imgPre);
        responseVO.setTotalPage(totalPage);
        responseVO.setNowPage(nowPage);

        return responseVO;
    }

    public static<M> ResponseVO success(String imgPre,M m){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setStatus(0);
        responseVo.setData(m);
        responseVo.setImgPre(imgPre);

        return responseVo;
    }
    public static<M> ResponseVO success(M m){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setStatus(0);
        responseVo.setData(m);

        return responseVo;
    }

    public static<M> ResponseVO success(String msg){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setStatus(0);
        responseVo.setMsg(msg);

        return responseVo;
    }
    public static<M> ResponseVO serviceFail(String msg){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setStatus(1);
        responseVo.setMsg(msg);

        return responseVo;
    }

    public static<M> ResponseVO appFail(String msg){
        ResponseVO responseVo = new ResponseVO();
        responseVo.setStatus(999);
        responseVo.setMsg(msg);

        return responseVo;
    }

}
