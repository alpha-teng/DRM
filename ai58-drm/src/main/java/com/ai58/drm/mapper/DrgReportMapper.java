package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrgReport;

public interface DrgReportMapper {
    public DrgReport selectDrgReportById(Long reportId);
    public List<DrgReport> selectDrgReportList(DrgReport drgreport);
    public int insertDrgReport(DrgReport drgreport);
    public int updateDrgReport(DrgReport drgreport);
    public int deleteDrgReportById(Long reportId);
    public int deleteDrgReportByIds(Long[] reportIds);
}
