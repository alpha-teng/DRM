package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.QualityPerf;

public interface IQualityPerfService {
    public QualityPerf selectQualityPerfById(Long perfId);
    public List<QualityPerf> selectQualityPerfList(QualityPerf qualityperf);
    public int insertQualityPerf(QualityPerf qualityperf);
    public int updateQualityPerf(QualityPerf qualityperf);
    public int deleteQualityPerfByIds(Long[] perfIds);
    public int deleteQualityPerfById(Long perfId);
}
