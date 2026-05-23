package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DataQuality;

/**
 * 数据质量检查 数据层
 *
 * @author ai58
 */
public interface DataQualityMapper {

    public DataQuality selectDataQuality(DataQuality quality);
    public List<DataQuality> selectDataQualityList(DataQuality quality);
    public int insertDataQuality(DataQuality quality);
    public int updateDataQuality(DataQuality quality);
    public int deleteDataQualityById(Long qualityId);
    public int deleteDataQualityByIds(Long[] qualityIds);
}
