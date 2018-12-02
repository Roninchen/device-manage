package com.stylefeng.guns.modular.system.dao;

import com.stylefeng.guns.core.datascope.DataScope;
import com.stylefeng.guns.modular.system.model.FixAsset;
import com.baomidou.mybatisplus.mapper.BaseMapper;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author fine
 * @since 2018-11-30
 */
public interface FixAssetMapper extends BaseMapper<FixAsset> {
    public List<Map<String, Object>> selectFixAssets(DataScope dataScope);
}
