package com.ai58.drm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ai58.common.annotation.Log;
import com.ai58.common.core.controller.BaseController;
import com.ai58.common.core.domain.AjaxResult;
import com.ai58.common.enums.BusinessType;
import com.ai58.drm.domain.DrmQualityReport;
import com.ai58.drm.service.IQualityReportService;
import com.ai58.common.utils.poi.ExcelUtil;
import com.ai58.common.core.page.TableDataInfo;

@RestController
@RequestMapping("/drm/qualityReport")
public class QualityReportController extends BaseController {
    @Autowired
    private IQualityReportService service;

    @GetMapping("/list")
    public TableDataInfo list(DrmQualityReport entity) {
        startPage();
        List<DrmQualityReport> list = service.selectQualityReportList(entity);
        return getDataTable(list);
    }

    @Log(title = "质量报告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrmQualityReport entity) {
        List<DrmQualityReport> list = service.selectQualityReportList(entity);
        ExcelUtil<DrmQualityReport> util = new ExcelUtil<DrmQualityReport>(DrmQualityReport.class);
        util.exportExcel(response, list, "质量报告数据");
    }

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) { return AjaxResult.success(service.selectQualityReportById(id)); }

    @Log(title = "质量报告", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrmQualityReport entity) { return toAjax(service.insertQualityReport(entity)); }

    @Log(title = "质量报告", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrmQualityReport entity) { return toAjax(service.updateQualityReport(entity)); }

    @Log(title = "质量报告", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) { return toAjax(service.deleteQualityReportByIds(ids)); }
}
