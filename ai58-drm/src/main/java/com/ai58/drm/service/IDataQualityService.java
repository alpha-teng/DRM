package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DataQuality;

/**
 * DataQuality 服务层
 *
 * @author ai58
 */
public interface IDataQualityService
{
    /**
     * 查询DataQuality信息
     *
     * @param qualityId DataQualityID
     * @return DataQuality信息
     */
    public DataQuality selectDataQualityById(Long qualityId);

    /**
     * 查询DataQuality列表
     *
     * @param dataquality DataQuality信息
     * @return DataQuality集合
     */
    public List<DataQuality> selectDataQualityList(DataQuality dataquality);

    /**
     * 新增DataQuality
     *
     * @param dataquality DataQuality信息
     * @return 结果
     */
    public int insertDataQuality(DataQuality dataquality);

    /**
     * 修改DataQuality
     *
     * @param dataquality DataQuality信息
     * @return 结果
     */
    public int updateDataQuality(DataQuality dataquality);

    /**
     * 删除DataQuality
     *
     * @param qualityId DataQualityID
     * @return 结果
     */
    public int deleteDataQualityById(Long qualityId);

    /**
     * 批量删除DataQuality
     *
     * @param qualityIds 需要删除的DataQualityID
     * @return 结果
     */
    public int deleteDataQualityByIds(Long[] qualityIds);
}
