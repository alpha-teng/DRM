package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.DataSourceMapper;
import com.ai58.drm.domain.DataSource;
import com.ai58.drm.service.IDataSourceService;

/**
 * DataSource 服务层实现
 *
 * @author ai58
 */
@Service
public class DataSourceServiceImpl implements IDataSourceService
{
    @Autowired
    private DataSourceMapper datasourceMapper;

    /**
     * 查询DataSource信息
     *
     * @param sourceId DataSourceID
     * @return DataSource信息
     */
    @Override
    public DataSource selectDataSourceById(Long sourceId)
    {
        DataSource entity = new DataSource();
        entity.setSourceId(sourceId);
        return datasourceMapper.selectDataSource(entity);
    }

    /**
     * 查询DataSource列表
     *
     * @param datasource DataSource信息
     * @return DataSource集合
     */
    @Override
    public List<DataSource> selectDataSourceList(DataSource datasource)
    {
        return datasourceMapper.selectDataSourceList(datasource);
    }

    /**
     * 新增DataSource
     *
     * @param datasource DataSource信息
     * @return 结果
     */
    @Override
    public int insertDataSource(DataSource datasource)
    {
        return datasourceMapper.insertDataSource(datasource);
    }

    /**
     * 修改DataSource
     *
     * @param datasource DataSource信息
     * @return 结果
     */
    @Override
    public int updateDataSource(DataSource datasource)
    {
        return datasourceMapper.updateDataSource(datasource);
    }

    /**
     * 删除DataSource
     *
     * @param sourceId DataSourceID
     * @return 结果
     */
    @Override
    public int deleteDataSourceById(Long sourceId)
    {
        return datasourceMapper.deleteDataSourceById(sourceId);
    }

    /**
     * 批量删除DataSource
     *
     * @param sourceIds 需要删除的DataSourceID
     * @return 结果
     */
    @Override
    public int deleteDataSourceByIds(Long[] sourceIds)
    {
        return datasourceMapper.deleteDataSourceByIds(sourceIds);
    }
}
