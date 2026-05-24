package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.DrgReportMapper;
import com.ai58.drm.domain.DrgReport;
import com.ai58.drm.service.IDrgReportService;

@Service
public class DrgReportServiceImpl implements IDrgReportService {
    @Autowired
    private DrgReportMapper drgReportMapper;

    @Override
    public DrgReport selectDrgReportById(Long reportId) {
        return drgReportMapper.selectDrgReportById(reportId);
    }

    @Override
    public List<DrgReport> selectDrgReportList(DrgReport drgreport) {
        return drgReportMapper.selectDrgReportList(drgreport);
    }

    @Override
    public int insertDrgReport(DrgReport drgreport) {
        return drgReportMapper.insertDrgReport(drgreport);
    }

    @Override
    public int updateDrgReport(DrgReport drgreport) {
        return drgReportMapper.updateDrgReport(drgreport);
    }

    @Override
    public int deleteDrgReportByIds(Long[] reportIds) {
        return drgReportMapper.deleteDrgReportByIds(reportIds);
    }

    @Override
    public int deleteDrgReportById(Long reportId) {
        return drgReportMapper.deleteDrgReportById(reportId);
    }
}
