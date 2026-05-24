package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.PerfReport;

public interface PerfReportMapper {
    public PerfReport selectPerfReportById(Long reportId);
    public List<PerfReport> selectPerfReportList(PerfReport perfreport);
    public int insertPerfReport(PerfReport perfreport);
    public int updatePerfReport(PerfReport perfreport);
    public int deletePerfReportById(Long reportId);
    public int deletePerfReportByIds(Long[] reportIds);
}
