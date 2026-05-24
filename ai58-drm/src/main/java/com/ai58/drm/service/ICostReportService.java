package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.CostReport;

public interface ICostReportService {
    public CostReport selectCostReportById(Long reportId);
    public List<CostReport> selectCostReportList(CostReport costReport);
    public int insertCostReport(CostReport costReport);
    public int updateCostReport(CostReport costReport);
    public int deleteCostReportByIds(Long[] reportIds);
    public int deleteCostReportById(Long reportId);
}
