package com.stylefeng.guns.rest.common.persistence.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.stylefeng.guns.api.device.vo.HomepageVO;
import com.stylefeng.guns.rest.common.persistence.model.FixAsset;

import java.util.List;

import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author chauncy
 * @since 2018-11-22
 */
public interface FixAssetMapper extends BaseMapper<FixAsset> {
    void updateBatch1(List list);

    List<HomepageVO> likeSearch(Page page,@Param("context") String context);
}
