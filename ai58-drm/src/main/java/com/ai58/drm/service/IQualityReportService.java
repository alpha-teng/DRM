package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrmQualityReport;

public interface IQualityReportService {
    public DrmQualityReport selectQualityReportById(Long id);
    public List<DrmQualityReport> selectQualityReportList(DrmQualityReport entity);
    public int insertQualityReport(DrmQualityReport entity);
    public int updateQualityReport(DrmQualityReport entity);
    public int deleteQualityReportByIds(Long[] ids);
    public int deleteQualityReportById(Long id);
}
