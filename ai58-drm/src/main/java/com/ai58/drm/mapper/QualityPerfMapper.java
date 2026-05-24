package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.QualityPerf;

public interface QualityPerfMapper {
    public QualityPerf selectQualityPerfById(Long perfId);
    public List<QualityPerf> selectQualityPerfList(QualityPerf qualityperf);
    public int insertQualityPerf(QualityPerf qualityperf);
    public int updateQualityPerf(QualityPerf qualityperf);
    public int deleteQualityPerfById(Long perfId);
    public int deleteQualityPerfByIds(Long[] perfIds);
}
