package com.ai58.drm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ai58.common.annotation.Log;
import com.ai58.common.core.controller.BaseController;
import com.ai58.common.core.domain.AjaxResult;
import com.ai58.common.core.page.TableDataInfo;
import com.ai58.common.enums.BusinessType;
import com.ai58.common.utils.poi.ExcelUtil;
import com.ai58.drm.domain.CostReport;
import com.ai58.drm.service.ICostReportService;

@RestController
@RequestMapping("/drm/cost/costReport")
public class CostReportController extends BaseController {
    @Autowired
    private ICostReportService costReportService;

    @GetMapping("/list")
    public TableDataInfo list(CostReport costReport) {
        startPage();
        List<CostReport> list = costReportService.selectCostReportList(costReport);
        return getDataTable(list);
    }

    @Log(title = "成本报告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CostReport costReport) {
        List<CostReport> list = costReportService.selectCostReportList(costReport);
        ExcelUtil<CostReport> util = new ExcelUtil<CostReport>(CostReport.class);
        util.exportExcel(response, list, "成本报告数据");
    }

    @GetMapping(value = "/{reportId}")
    public AjaxResult getInfo(@PathVariable("reportId") Long reportId) {
        return success(costReportService.selectCostReportById(reportId));
    }

    @Log(title = "成本报告", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CostReport costReport) {
        costReport.setCreateBy(getUsername());
        return toAjax(costReportService.insertCostReport(costReport));
    }

    @Log(title = "成本报告", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CostReport costReport) {
        costReport.setUpdateBy(getUsername());
        return toAjax(costReportService.updateCostReport(costReport));
    }

    @Log(title = "成本报告", businessType = BusinessType.DELETE)
    @DeleteMapping("/{reportIds}")
    public AjaxResult remove(@PathVariable Long[] reportIds) {
        return toAjax(costReportService.deleteCostReportByIds(reportIds));
    }
}
