package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrmAiReport;

public interface AiReportMapper {
    public DrmAiReport selectAiReportById(Long id);
    public List<DrmAiReport> selectAiReportList(DrmAiReport entity);
    public int insertAiReport(DrmAiReport entity);
    public int updateAiReport(DrmAiReport entity);
    public int deleteAiReportById(Long id);
    public int deleteAiReportByIds(Long[] ids);
}
