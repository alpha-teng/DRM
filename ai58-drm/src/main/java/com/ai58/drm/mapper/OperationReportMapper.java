package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.OperationReport;

/**
 * 运营报告 数据层
 *
 * @author ai58
 */
public interface OperationReportMapper {

    public OperationReport selectOperationReport(OperationReport report);
    public List<OperationReport> selectOperationReportList(OperationReport report);
    public int insertOperationReport(OperationReport report);
    public int updateOperationReport(OperationReport report);
    public int deleteOperationReportById(Long reportId);
    public int deleteOperationReportByIds(Long[] reportIds);
}
