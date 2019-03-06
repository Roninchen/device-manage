package com.stylefeng.guns.modular.system_device.service.impl;

import com.stylefeng.guns.core.datascope.DataScope;
import com.stylefeng.guns.modular.system.model.FixAsset;
import com.stylefeng.guns.modular.system.dao.FixAssetMapper;
import com.stylefeng.guns.modular.system_device.service.IFixAssetService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author fine
 * @since 2018-11-30
 */
@Service
public class FixAssetServiceImpl extends ServiceImpl<FixAssetMapper, FixAsset> implements IFixAssetService {

    @Override
    public List<Map<String, Object>> selectFixAssets(DataScope dataScope) {
        return this.baseMapper.selectFixAssets(dataScope);
    }
}
