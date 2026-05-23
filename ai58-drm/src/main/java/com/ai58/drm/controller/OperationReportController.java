package com.ai58.drm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
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
import com.ai58.drm.domain.OperationReport;
import com.ai58.drm.service.IOperationReportService;

/**
 * 运营报告 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/operationReport")
public class OperationReportController extends BaseController
{
    @Autowired
    private IOperationReportService operationreportService;

    /**
     * 获取运营报告列表
     */
    @PreAuthorize("@ss.hasPermi('drm/operationReport:list')")
    @GetMapping("/list")
    public TableDataInfo list(OperationReport operationreport)
    {
        startPage();
        List<OperationReport> list = operationreportService.selectOperationReportList(operationreport);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('drm/operationReport:export')")
    @Log(title = "运营报告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, OperationReport operationreport)
    {
        List<OperationReport> list = operationreportService.selectOperationReportList(operationreport);
        ExcelUtil<OperationReport> util = new ExcelUtil<OperationReport>(OperationReport.class);
        util.exportExcel(response, list, "运营报告数据");
    }

    @PreAuthorize("@ss.hasPermi('drm/operationReport:query')")
    @GetMapping(value = "/{reportId}")
    public AjaxResult getInfo(@PathVariable Long reportId)
    {
        return success(operationreportService.selectOperationReportById(reportId));
    }

    @PreAuthorize("@ss.hasPermi('drm/operationReport:add')")
    @Log(title = "运营报告", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OperationReport operationreport)
    {
        operationreport.setCreateBy(getUsername());
        return toAjax(operationreportService.insertOperationReport(operationreport));
    }

    @PreAuthorize("@ss.hasPermi('drm/operationReport:edit')")
    @Log(title = "运营报告", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OperationReport operationreport)
    {
        operationreport.setUpdateBy(getUsername());
        return toAjax(operationreportService.updateOperationReport(operationreport));
    }

    @PreAuthorize("@ss.hasPermi('drm/operationReport:remove')")
    @Log(title = "运营报告", businessType = BusinessType.DELETE)
    @DeleteMapping("/{reportIds}")
    public AjaxResult remove(@PathVariable Long[] reportIds)
    {
        return toAjax(operationreportService.deleteOperationReportByIds(reportIds));
    }
}
