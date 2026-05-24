package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.PerfReportMapper;
import com.ai58.drm.domain.PerfReport;
import com.ai58.drm.service.IPerfReportService;

@Service
public class PerfReportServiceImpl implements IPerfReportService {
    @Autowired
    private PerfReportMapper perfReportMapper;

    @Override
    public PerfReport selectPerfReportById(Long reportId) {
        return perfReportMapper.selectPerfReportById(reportId);
    }

    @Override
    public List<PerfReport> selectPerfReportList(PerfReport perfreport) {
        return perfReportMapper.selectPerfReportList(perfreport);
    }

    @Override
    public int insertPerfReport(PerfReport perfreport) {
        return perfReportMapper.insertPerfReport(perfreport);
    }

    @Override
    public int updatePerfReport(PerfReport perfreport) {
        return perfReportMapper.updatePerfReport(perfreport);
    }

    @Override
    public int deletePerfReportByIds(Long[] reportIds) {
        return perfReportMapper.deletePerfReportByIds(reportIds);
    }

    @Override
    public int deletePerfReportById(Long reportId) {
        return perfReportMapper.deletePerfReportById(reportId);
    }
}
