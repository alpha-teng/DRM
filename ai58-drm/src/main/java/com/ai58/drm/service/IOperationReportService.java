package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.OperationReport;

/**
 * OperationReport 服务层
 *
 * @author ai58
 */
public interface IOperationReportService
{
    /**
     * 查询OperationReport信息
     *
     * @param reportId OperationReportID
     * @return OperationReport信息
     */
    public OperationReport selectOperationReportById(Long reportId);

    /**
     * 查询OperationReport列表
     *
     * @param operationreport OperationReport信息
     * @return OperationReport集合
     */
    public List<OperationReport> selectOperationReportList(OperationReport operationreport);

    /**
     * 新增OperationReport
     *
     * @param operationreport OperationReport信息
     * @return 结果
     */
    public int insertOperationReport(OperationReport operationreport);

    /**
     * 修改OperationReport
     *
     * @param operationreport OperationReport信息
     * @return 结果
     */
    public int updateOperationReport(OperationReport operationreport);

    /**
     * 删除OperationReport
     *
     * @param reportId OperationReportID
     * @return 结果
     */
    public int deleteOperationReportById(Long reportId);

    /**
     * 批量删除OperationReport
     *
     * @param reportIds 需要删除的OperationReportID
     * @return 结果
     */
    public int deleteOperationReportByIds(Long[] reportIds);
}
