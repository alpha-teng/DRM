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
import com.ai58.drm.domain.DrmAiReport;
import com.ai58.drm.service.IAiReportService;
import com.ai58.common.utils.poi.ExcelUtil;
import com.ai58.common.core.page.TableDataInfo;

@RestController
@RequestMapping("/drm/aiReport")
public class AiReportController extends BaseController {
    @Autowired
    private IAiReportService service;

    @GetMapping("/list")
    public TableDataInfo list(DrmAiReport entity) {
        startPage();
        List<DrmAiReport> list = service.selectAiReportList(entity);
        return getDataTable(list);
    }

    @Log(title = "AI分析报告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrmAiReport entity) {
        List<DrmAiReport> list = service.selectAiReportList(entity);
        ExcelUtil<DrmAiReport> util = new ExcelUtil<DrmAiReport>(DrmAiReport.class);
        util.exportExcel(response, list, "AI分析报告数据");
    }

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) { return AjaxResult.success(service.selectAiReportById(id)); }

    @Log(title = "AI分析报告", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrmAiReport entity) { return toAjax(service.insertAiReport(entity)); }

    @Log(title = "AI分析报告", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrmAiReport entity) { return toAjax(service.updateAiReport(entity)); }

    @Log(title = "AI分析报告", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) { return toAjax(service.deleteAiReportByIds(ids)); }
}
