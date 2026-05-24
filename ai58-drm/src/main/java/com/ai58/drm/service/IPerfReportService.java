package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.PerfReport;

public interface IPerfReportService {
    public PerfReport selectPerfReportById(Long reportId);
    public List<PerfReport> selectPerfReportList(PerfReport perfreport);
    public int insertPerfReport(PerfReport perfreport);
    public int updatePerfReport(PerfReport perfreport);
    public int deletePerfReportByIds(Long[] reportIds);
    public int deletePerfReportById(Long reportId);
}
