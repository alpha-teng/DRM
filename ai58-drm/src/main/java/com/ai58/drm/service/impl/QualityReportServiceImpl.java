package com.ai58.drm.service.impl;

import java.util.List;
import com.ai58.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.QualityReportMapper;
import com.ai58.drm.domain.DrmQualityReport;
import com.ai58.drm.service.IQualityReportService;

@Service
public class QualityReportServiceImpl implements IQualityReportService {
    @Autowired
    private QualityReportMapper mapper;

    @Override
    public DrmQualityReport selectQualityReportById(Long id) { return mapper.selectQualityReportById(id); }

    @Override
    public List<DrmQualityReport> selectQualityReportList(DrmQualityReport entity) { return mapper.selectQualityReportList(entity); }

    @Override
    public int insertQualityReport(DrmQualityReport entity) {
        entity.setCreateTime(DateUtils.getNowDate());
        return mapper.insertQualityReport(entity);
    }

    @Override
    public int updateQualityReport(DrmQualityReport entity) {
        entity.setUpdateTime(DateUtils.getNowDate());
        return mapper.updateQualityReport(entity);
    }

    @Override
    public int deleteQualityReportByIds(Long[] ids) { return mapper.deleteQualityReportByIds(ids); }

    @Override
    public int deleteQualityReportById(Long id) { return mapper.deleteQualityReportById(id); }
}
