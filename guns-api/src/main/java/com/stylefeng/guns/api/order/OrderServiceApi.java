package com.stylefeng.guns.api.order;

import com.baomidou.mybatisplus.plugins.Page;
import com.stylefeng.guns.api.order.vo.OrderVo;

import java.util.List;

public interface OrderServiceApi {

    //验证售出的票是否为真
    boolean isTrueSeats(String fields,String seats);

    //已经销售的座位里有没有这些座位
    boolean isNotSoldSeats(String fields,String seats);
    //创建订单信息
    OrderVo saveOrderInfo(Integer fieldId,String soldSeats,String seatsName,Integer userId);
    //使用当前登陆人获取已经购买的订单
    Page<OrderVo> getOrderByUserId(Integer userId,Page<OrderVo> page);

    //根据FirldId 获取所有已经销售的座位编号
    String getSoldSeatsByFieldId(Integer fieldId);

}
