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
import com.ai58.drm.domain.DrgReport;
import com.ai58.drm.service.IDrgReportService;

@RestController
@RequestMapping("drm/drgReport")
public class DrgReportController extends BaseController {
    @Autowired
    private IDrgReportService drgreportService;

    @GetMapping("/list")
    public TableDataInfo list(DrgReport drgreport) {
        startPage();
        List<DrgReport> list = drgreportService.selectDrgReportList(drgreport);
        return getDataTable(list);
    }

    @Log(title = "DRG报告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrgReport drgreport) {
        List<DrgReport> list = drgreportService.selectDrgReportList(drgreport);
        ExcelUtil<DrgReport> util = new ExcelUtil<DrgReport>(DrgReport.class);
        util.exportExcel(response, list, "DRG报告数据");
    }

    @GetMapping(value = "/{reportId}")
    public AjaxResult getInfo(@PathVariable Long reportId) {
        return success(drgreportService.selectDrgReportById(reportId));
    }

    @Log(title = "DRG报告", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrgReport drgreport) {
        drgreport.setCreateBy(getUsername());
        return toAjax(drgreportService.insertDrgReport(drgreport));
    }

    @Log(title = "DRG报告", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrgReport drgreport) {
        drgreport.setUpdateBy(getUsername());
        return toAjax(drgreportService.updateDrgReport(drgreport));
    }

    @Log(title = "DRG报告", businessType = BusinessType.DELETE)
    @DeleteMapping("/{reportIds}")
    public AjaxResult remove(@PathVariable Long[] reportIds) {
        return toAjax(drgreportService.deleteDrgReportByIds(reportIds));
    }
}
