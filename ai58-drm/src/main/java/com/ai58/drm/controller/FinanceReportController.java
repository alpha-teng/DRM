package com.ai58.drm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ai58.common.annotation.Log;
import com.ai58.common.core.controller.BaseController;
import com.ai58.common.core.domain.AjaxResult;
import com.ai58.common.core.page.TableDataInfo;
import com.ai58.common.enums.BusinessType;
import com.ai58.common.utils.poi.ExcelUtil;
import com.ai58.drm.domain.FinanceReport;
import com.ai58.drm.service.IFinanceReportService;

/**
 * 财务报告Controller
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/finance/financeReport")
public class FinanceReportController extends BaseController {
    @Autowired
    private IFinanceReportService financeReportService;

    /**
     * 查询财务报告列表
     */
    @GetMapping("/list")
    public TableDataInfo list(FinanceReport financeReport) {
        startPage();
        List<FinanceReport> list = financeReportService.selectFinanceReportList(financeReport);
        return getDataTable(list);
    }

    /**
     * 导出财务报告列表
     */
    @Log(title = "财务报告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FinanceReport financeReport) {
        List<FinanceReport> list = financeReportService.selectFinanceReportList(financeReport);
        ExcelUtil<FinanceReport> util = new ExcelUtil<FinanceReport>(FinanceReport.class);
        util.exportExcel(response, list, "财务报告数据");
    }

    /**
     * 获取财务报告详细信息
     */
    @GetMapping(value = "/{reportId}")
    public AjaxResult getInfo(@PathVariable("reportId") Long reportId) {
        return success(financeReportService.selectFinanceReportById(reportId));
    }

    /**
     * 新增财务报告
     */
    @Log(title = "财务报告", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody FinanceReport financeReport) {
        financeReport.setCreateBy(getUsername());
        return toAjax(financeReportService.insertFinanceReport(financeReport));
    }

    /**
     * 修改财务报告
     */
    @Log(title = "财务报告", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody FinanceReport financeReport) {
        financeReport.setUpdateBy(getUsername());
        return toAjax(financeReportService.updateFinanceReport(financeReport));
    }

    /**
     * 删除财务报告
     */
    @Log(title = "财务报告", businessType = BusinessType.DELETE)
    @DeleteMapping("/{reportIds}")
    public AjaxResult remove(@PathVariable Long[] reportIds) {
        return toAjax(financeReportService.deleteFinanceReportByIds(reportIds));
    }
}
