package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DataSource;

/**
 * 数据源配置 数据层
 *
 * @author ai58
 */
public interface DataSourceMapper {

    public DataSource selectDataSource(DataSource dataSource);
    public List<DataSource> selectDataSourceList(DataSource dataSource);
    public int insertDataSource(DataSource dataSource);
    public int updateDataSource(DataSource dataSource);
    public int deleteDataSourceById(Long sourceId);
    public int deleteDataSourceByIds(Long[] sourceIds);
}
