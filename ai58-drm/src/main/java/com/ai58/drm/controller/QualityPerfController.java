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
import com.ai58.drm.domain.QualityPerf;
import com.ai58.drm.service.IQualityPerfService;

@RestController
@RequestMapping("/drm/qualityPerf")
public class QualityPerfController extends BaseController {
    @Autowired
    private IQualityPerfService qualityperfService;

    @GetMapping("/list")
    public TableDataInfo list(QualityPerf qualityperf) {
        startPage();
        List<QualityPerf> list = qualityperfService.selectQualityPerfList(qualityperf);
        return getDataTable(list);
    }

    @Log(title = "质量绩效", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, QualityPerf qualityperf) {
        List<QualityPerf> list = qualityperfService.selectQualityPerfList(qualityperf);
        ExcelUtil<QualityPerf> util = new ExcelUtil<QualityPerf>(QualityPerf.class);
        util.exportExcel(response, list, "质量绩效数据");
    }

    @GetMapping(value = "/{perfId}")
    public AjaxResult getInfo(@PathVariable Long perfId) {
        return success(qualityperfService.selectQualityPerfById(perfId));
    }

    @Log(title = "质量绩效", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody QualityPerf qualityperf) {
        qualityperf.setCreateBy(getUsername());
        return toAjax(qualityperfService.insertQualityPerf(qualityperf));
    }

    @Log(title = "质量绩效", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody QualityPerf qualityperf) {
        qualityperf.setUpdateBy(getUsername());
        return toAjax(qualityperfService.updateQualityPerf(qualityperf));
    }

    @Log(title = "质量绩效", businessType = BusinessType.DELETE)
    @DeleteMapping("/{perfIds}")
    public AjaxResult remove(@PathVariable Long[] perfIds) {
        return toAjax(qualityperfService.deleteQualityPerfByIds(perfIds));
    }
}
