package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrmQualityReport;

public interface QualityReportMapper {
    public DrmQualityReport selectQualityReportById(Long id);
    public List<DrmQualityReport> selectQualityReportList(DrmQualityReport entity);
    public int insertQualityReport(DrmQualityReport entity);
    public int updateQualityReport(DrmQualityReport entity);
    public int deleteQualityReportById(Long id);
    public int deleteQualityReportByIds(Long[] ids);
}
