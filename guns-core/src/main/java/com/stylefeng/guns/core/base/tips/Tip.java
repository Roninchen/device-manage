package com.stylefeng.guns.core.base.tips;

import lombok.Data;

/**
 * 返回给前台的提示（最终转化为json形式）
 *
 * @author chauncy
 * @Date 2017年1月11日 下午11:58:00
 */
@Data
public abstract class Tip {

    protected int code;
    protected String message;

}
