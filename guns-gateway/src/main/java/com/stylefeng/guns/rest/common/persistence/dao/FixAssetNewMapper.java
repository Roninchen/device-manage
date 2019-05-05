package com.stylefeng.guns.rest.common.persistence.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.stylefeng.guns.api.device.vo.HomepageVO;
import com.stylefeng.guns.rest.common.persistence.model.FixAssetNew;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author chauncy
 * @since 2019-03-09
 */
public interface FixAssetNewMapper extends BaseMapper<FixAssetNew> {

    List<HomepageVO> likeSearch(Page page, @Param("context") String context);

}
