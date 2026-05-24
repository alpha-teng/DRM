package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.FinanceReportMapper;
import com.ai58.drm.domain.FinanceReport;
import com.ai58.drm.service.IFinanceReportService;

/**
 * 财务报告Service业务层处理
 *
 * @author ai58
 */
@Service
public class FinanceReportServiceImpl implements IFinanceReportService {
    @Autowired
    private FinanceReportMapper financeReportMapper;

    /**
     * 查询财务报告
     *
     * @param reportId 财务报告主键
     * @return 财务报告
     */
    @Override
    public FinanceReport selectFinanceReportById(Long reportId) {
        return financeReportMapper.selectFinanceReportById(reportId);
    }

    /**
     * 查询财务报告列表
     *
     * @param financeReport 财务报告
     * @return 财务报告
     */
    @Override
    public List<FinanceReport> selectFinanceReportList(FinanceReport financeReport) {
        return financeReportMapper.selectFinanceReportList(financeReport);
    }

    /**
     * 新增财务报告
     *
     * @param financeReport 财务报告
     * @return 结果
     */
    @Override
    public int insertFinanceReport(FinanceReport financeReport) {
        return financeReportMapper.insertFinanceReport(financeReport);
    }

    /**
     * 修改财务报告
     *
     * @param financeReport 财务报告
     * @return 结果
     */
    @Override
    public int updateFinanceReport(FinanceReport financeReport) {
        return financeReportMapper.updateFinanceReport(financeReport);
    }

    /**
     * 批量删除财务报告
     *
     * @param reportIds 需要删除的财务报告主键
     * @return 结果
     */
    @Override
    public int deleteFinanceReportByIds(Long[] reportIds) {
        return financeReportMapper.deleteFinanceReportByIds(reportIds);
    }

    /**
     * 删除财务报告信息
     *
     * @param reportId 财务报告主键
     * @return 结果
     */
    @Override
    public int deleteFinanceReportById(Long reportId) {
        return financeReportMapper.deleteFinanceReportById(reportId);
    }
}
