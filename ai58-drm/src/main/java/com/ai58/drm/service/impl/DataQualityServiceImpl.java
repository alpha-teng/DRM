package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.DataQualityMapper;
import com.ai58.drm.domain.DataQuality;
import com.ai58.drm.service.IDataQualityService;

/**
 * DataQuality 服务层实现
 *
 * @author ai58
 */
@Service
public class DataQualityServiceImpl implements IDataQualityService
{
    @Autowired
    private DataQualityMapper dataqualityMapper;

    /**
     * 查询DataQuality信息
     *
     * @param qualityId DataQualityID
     * @return DataQuality信息
     */
    @Override
    public DataQuality selectDataQualityById(Long qualityId)
    {
        DataQuality entity = new DataQuality();
        entity.setQualityId(qualityId);
        return dataqualityMapper.selectDataQuality(entity);
    }

    /**
     * 查询DataQuality列表
     *
     * @param dataquality DataQuality信息
     * @return DataQuality集合
     */
    @Override
    public List<DataQuality> selectDataQualityList(DataQuality dataquality)
    {
        return dataqualityMapper.selectDataQualityList(dataquality);
    }

    /**
     * 新增DataQuality
     *
     * @param dataquality DataQuality信息
     * @return 结果
     */
    @Override
    public int insertDataQuality(DataQuality dataquality)
    {
        return dataqualityMapper.insertDataQuality(dataquality);
    }

    /**
     * 修改DataQuality
     *
     * @param dataquality DataQuality信息
     * @return 结果
     */
    @Override
    public int updateDataQuality(DataQuality dataquality)
    {
        return dataqualityMapper.updateDataQuality(dataquality);
    }

    /**
     * 删除DataQuality
     *
     * @param qualityId DataQualityID
     * @return 结果
     */
    @Override
    public int deleteDataQualityById(Long qualityId)
    {
        return dataqualityMapper.deleteDataQualityById(qualityId);
    }

    /**
     * 批量删除DataQuality
     *
     * @param qualityIds 需要删除的DataQualityID
     * @return 结果
     */
    @Override
    public int deleteDataQualityByIds(Long[] qualityIds)
    {
        return dataqualityMapper.deleteDataQualityByIds(qualityIds);
    }
}
