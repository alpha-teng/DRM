package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrmAiReport;

public interface IAiReportService {
    public DrmAiReport selectAiReportById(Long id);
    public List<DrmAiReport> selectAiReportList(DrmAiReport entity);
    public int insertAiReport(DrmAiReport entity);
    public int updateAiReport(DrmAiReport entity);
    public int deleteAiReportByIds(Long[] ids);
    public int deleteAiReportById(Long id);
}
