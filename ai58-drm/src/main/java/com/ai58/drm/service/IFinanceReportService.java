package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.FinanceReport;

/**
 * 财务报告Service接口
 *
 * @author ai58
 */
public interface IFinanceReportService {
    /**
     * 查询财务报告
     *
     * @param reportId 财务报告主键
     * @return 财务报告
     */
    public FinanceReport selectFinanceReportById(Long reportId);

    /**
     * 查询财务报告列表
     *
     * @param financeReport 财务报告
     * @return 财务报告集合
     */
    public List<FinanceReport> selectFinanceReportList(FinanceReport financeReport);

    /**
     * 新增财务报告
     *
     * @param financeReport 财务报告
     * @return 结果
     */
    public int insertFinanceReport(FinanceReport financeReport);

    /**
     * 修改财务报告
     *
     * @param financeReport 财务报告
     * @return 结果
     */
    public int updateFinanceReport(FinanceReport financeReport);

    /**
     * 批量删除财务报告
     *
     * @param reportIds 需要删除的财务报告主键集合
     * @return 结果
     */
    public int deleteFinanceReportByIds(Long[] reportIds);

    /**
     * 删除财务报告信息
     *
     * @param reportId 财务报告主键
     * @return 结果
     */
    public int deleteFinanceReportById(Long reportId);
}
