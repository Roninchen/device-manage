package com.stylefeng.guns.rest.common.persistence.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.stylefeng.guns.rest.common.persistence.model.DeviceFlow;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author chauncy
 * @since 2018-11-22
 */
public interface DeviceFlowMapper extends BaseMapper<DeviceFlow> {
    void updateBatch1(List list);
}
