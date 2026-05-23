package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.DataMappingMapper;
import com.ai58.drm.domain.DataMapping;
import com.ai58.drm.service.IDataMappingService;

/**
 * DataMapping 服务层实现
 *
 * @author ai58
 */
@Service
public class DataMappingServiceImpl implements IDataMappingService
{
    @Autowired
    private DataMappingMapper datamappingMapper;

    /**
     * 查询DataMapping信息
     *
     * @param mappingId DataMappingID
     * @return DataMapping信息
     */
    @Override
    public DataMapping selectDataMappingById(Long mappingId)
    {
        DataMapping entity = new DataMapping();
        entity.setMappingId(mappingId);
        return datamappingMapper.selectDataMapping(entity);
    }

    /**
     * 查询DataMapping列表
     *
     * @param datamapping DataMapping信息
     * @return DataMapping集合
     */
    @Override
    public List<DataMapping> selectDataMappingList(DataMapping datamapping)
    {
        return datamappingMapper.selectDataMappingList(datamapping);
    }

    /**
     * 新增DataMapping
     *
     * @param datamapping DataMapping信息
     * @return 结果
     */
    @Override
    public int insertDataMapping(DataMapping datamapping)
    {
        return datamappingMapper.insertDataMapping(datamapping);
    }

    /**
     * 修改DataMapping
     *
     * @param datamapping DataMapping信息
     * @return 结果
     */
    @Override
    public int updateDataMapping(DataMapping datamapping)
    {
        return datamappingMapper.updateDataMapping(datamapping);
    }

    /**
     * 删除DataMapping
     *
     * @param mappingId DataMappingID
     * @return 结果
     */
    @Override
    public int deleteDataMappingById(Long mappingId)
    {
        return datamappingMapper.deleteDataMappingById(mappingId);
    }

    /**
     * 批量删除DataMapping
     *
     * @param mappingIds 需要删除的DataMappingID
     * @return 结果
     */
    @Override
    public int deleteDataMappingByIds(Long[] mappingIds)
    {
        return datamappingMapper.deleteDataMappingByIds(mappingIds);
    }
}
