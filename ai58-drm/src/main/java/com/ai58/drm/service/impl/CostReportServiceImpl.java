package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.CostReportMapper;
import com.ai58.drm.domain.CostReport;
import com.ai58.drm.service.ICostReportService;

@Service
public class CostReportServiceImpl implements ICostReportService {
    @Autowired
    private CostReportMapper costReportMapper;

    @Override
    public CostReport selectCostReportById(Long reportId) {
        return costReportMapper.selectCostReportById(reportId);
    }

    @Override
    public List<CostReport> selectCostReportList(CostReport costReport) {
        return costReportMapper.selectCostReportList(costReport);
    }

    @Override
    public int insertCostReport(CostReport costReport) {
        return costReportMapper.insertCostReport(costReport);
    }

    @Override
    public int updateCostReport(CostReport costReport) {
        return costReportMapper.updateCostReport(costReport);
    }

    @Override
    public int deleteCostReportByIds(Long[] reportIds) {
        return costReportMapper.deleteCostReportByIds(reportIds);
    }

    @Override
    public int deleteCostReportById(Long reportId) {
        return costReportMapper.deleteCostReportById(reportId);
    }
}
