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
import com.ai58.drm.domain.PerfReport;
import com.ai58.drm.service.IPerfReportService;

@RestController
@RequestMapping("drm/perfReport")
public class PerfReportController extends BaseController {
    @Autowired
    private IPerfReportService perfreportService;

    @GetMapping("/list")
    public TableDataInfo list(PerfReport perfreport) {
        startPage();
        List<PerfReport> list = perfreportService.selectPerfReportList(perfreport);
        return getDataTable(list);
    }

    @Log(title = "绩效报告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PerfReport perfreport) {
        List<PerfReport> list = perfreportService.selectPerfReportList(perfreport);
        ExcelUtil<PerfReport> util = new ExcelUtil<PerfReport>(PerfReport.class);
        util.exportExcel(response, list, "绩效报告数据");
    }

    @GetMapping(value = "/{reportId}")
    public AjaxResult getInfo(@PathVariable Long reportId) {
        return success(perfreportService.selectPerfReportById(reportId));
    }

    @Log(title = "绩效报告", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PerfReport perfreport) {
        perfreport.setCreateBy(getUsername());
        return toAjax(perfreportService.insertPerfReport(perfreport));
    }

    @Log(title = "绩效报告", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PerfReport perfreport) {
        perfreport.setUpdateBy(getUsername());
        return toAjax(perfreportService.updatePerfReport(perfreport));
    }

    @Log(title = "绩效报告", businessType = BusinessType.DELETE)
    @DeleteMapping("/{reportIds}")
    public AjaxResult remove(@PathVariable Long[] reportIds) {
        return toAjax(perfreportService.deletePerfReportByIds(reportIds));
    }
}
