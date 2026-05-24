package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.CostReport;

public interface CostReportMapper {
    public CostReport selectCostReportById(Long reportId);
    public List<CostReport> selectCostReportList(CostReport costReport);
    public int insertCostReport(CostReport costReport);
    public int updateCostReport(CostReport costReport);
    public int deleteCostReportById(Long reportId);
    public int deleteCostReportByIds(Long[] reportIds);
}
