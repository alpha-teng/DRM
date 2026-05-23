package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.OperationReportMapper;
import com.ai58.drm.domain.OperationReport;
import com.ai58.drm.service.IOperationReportService;

/**
 * OperationReport 服务层实现
 *
 * @author ai58
 */
@Service
public class OperationReportServiceImpl implements IOperationReportService
{
    @Autowired
    private OperationReportMapper operationreportMapper;

    /**
     * 查询OperationReport信息
     *
     * @param reportId OperationReportID
     * @return OperationReport信息
     */
    @Override
    public OperationReport selectOperationReportById(Long reportId)
    {
        OperationReport entity = new OperationReport();
        entity.setReportId(reportId);
        return operationreportMapper.selectOperationReport(entity);
    }

    /**
     * 查询OperationReport列表
     *
     * @param operationreport OperationReport信息
     * @return OperationReport集合
     */
    @Override
    public List<OperationReport> selectOperationReportList(OperationReport operationreport)
    {
        return operationreportMapper.selectOperationReportList(operationreport);
    }

    /**
     * 新增OperationReport
     *
     * @param operationreport OperationReport信息
     * @return 结果
     */
    @Override
    public int insertOperationReport(OperationReport operationreport)
    {
        return operationreportMapper.insertOperationReport(operationreport);
    }

    /**
     * 修改OperationReport
     *
     * @param operationreport OperationReport信息
     * @return 结果
     */
    @Override
    public int updateOperationReport(OperationReport operationreport)
    {
        return operationreportMapper.updateOperationReport(operationreport);
    }

    /**
     * 删除OperationReport
     *
     * @param reportId OperationReportID
     * @return 结果
     */
    @Override
    public int deleteOperationReportById(Long reportId)
    {
        return operationreportMapper.deleteOperationReportById(reportId);
    }

    /**
     * 批量删除OperationReport
     *
     * @param reportIds 需要删除的OperationReportID
     * @return 结果
     */
    @Override
    public int deleteOperationReportByIds(Long[] reportIds)
    {
        return operationreportMapper.deleteOperationReportByIds(reportIds);
    }
}
