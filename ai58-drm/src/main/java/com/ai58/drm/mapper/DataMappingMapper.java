package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DataMapping;

/**
 * 数据映射配置 数据层
 *
 * @author ai58
 */
public interface DataMappingMapper {

    public DataMapping selectDataMapping(DataMapping mapping);
    public List<DataMapping> selectDataMappingList(DataMapping mapping);
    public int insertDataMapping(DataMapping mapping);
    public int updateDataMapping(DataMapping mapping);
    public int deleteDataMappingById(Long mappingId);
    public int deleteDataMappingByIds(Long[] mappingIds);
}
