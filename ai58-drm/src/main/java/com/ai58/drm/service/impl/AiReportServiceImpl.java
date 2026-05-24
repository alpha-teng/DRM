package com.ai58.drm.service.impl;

import java.util.List;
import com.ai58.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.AiReportMapper;
import com.ai58.drm.domain.DrmAiReport;
import com.ai58.drm.service.IAiReportService;

@Service
public class AiReportServiceImpl implements IAiReportService {
    @Autowired
    private AiReportMapper mapper;

    @Override
    public DrmAiReport selectAiReportById(Long id) { return mapper.selectAiReportById(id); }

    @Override
    public List<DrmAiReport> selectAiReportList(DrmAiReport entity) { return mapper.selectAiReportList(entity); }

    @Override
    public int insertAiReport(DrmAiReport entity) {
        entity.setCreateTime(DateUtils.getNowDate());
        return mapper.insertAiReport(entity);
    }

    @Override
    public int updateAiReport(DrmAiReport entity) {
        entity.setUpdateTime(DateUtils.getNowDate());
        return mapper.updateAiReport(entity);
    }

    @Override
    public int deleteAiReportByIds(Long[] ids) { return mapper.deleteAiReportByIds(ids); }

    @Override
    public int deleteAiReportById(Long id) { return mapper.deleteAiReportById(id); }
}
