package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DataSource;

/**
 * DataSource 服务层
 *
 * @author ai58
 */
public interface IDataSourceService
{
    /**
     * 查询DataSource信息
     *
     * @param sourceId DataSourceID
     * @return DataSource信息
     */
    public DataSource selectDataSourceById(Long sourceId);

    /**
     * 查询DataSource列表
     *
     * @param datasource DataSource信息
     * @return DataSource集合
     */
    public List<DataSource> selectDataSourceList(DataSource datasource);

    /**
     * 新增DataSource
     *
     * @param datasource DataSource信息
     * @return 结果
     */
    public int insertDataSource(DataSource datasource);

    /**
     * 修改DataSource
     *
     * @param datasource DataSource信息
     * @return 结果
     */
    public int updateDataSource(DataSource datasource);

    /**
     * 删除DataSource
     *
     * @param sourceId DataSourceID
     * @return 结果
     */
    public int deleteDataSourceById(Long sourceId);

    /**
     * 批量删除DataSource
     *
     * @param sourceIds 需要删除的DataSourceID
     * @return 结果
     */
    public int deleteDataSourceByIds(Long[] sourceIds);
}
