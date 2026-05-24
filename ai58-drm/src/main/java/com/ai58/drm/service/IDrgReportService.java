package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrgReport;

public interface IDrgReportService {
    public DrgReport selectDrgReportById(Long reportId);
    public List<DrgReport> selectDrgReportList(DrgReport drgreport);
    public int insertDrgReport(DrgReport drgreport);
    public int updateDrgReport(DrgReport drgreport);
    public int deleteDrgReportByIds(Long[] reportIds);
    public int deleteDrgReportById(Long reportId);
}
