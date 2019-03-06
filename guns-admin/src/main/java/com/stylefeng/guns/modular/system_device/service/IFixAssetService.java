package com.stylefeng.guns.modular.system_device.service;

import com.stylefeng.guns.core.datascope.DataScope;
import com.stylefeng.guns.modular.system.model.FixAsset;
import com.baomidou.mybatisplus.service.IService;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author fine
 * @since 2018-11-30
 */
public interface IFixAssetService extends IService<FixAsset> {

    List<Map<String, Object>> selectFixAssets(@Param("dataScope") DataScope dataScope);
}
