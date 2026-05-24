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
import com.ai58.drm.domain.DrmAiWarning;
import com.ai58.drm.service.IAiWarningService;
import com.ai58.common.utils.poi.ExcelUtil;
import com.ai58.common.core.page.TableDataInfo;

@RestController
@RequestMapping("/drm/aiWarning")
public class AiWarningController extends BaseController {
    @Autowired
    private IAiWarningService service;

    @GetMapping("/list")
    public TableDataInfo list(DrmAiWarning entity) {
        startPage();
        List<DrmAiWarning> list = service.selectAiWarningList(entity);
        return getDataTable(list);
    }

    @Log(title = "AI智能预警", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrmAiWarning entity) {
        List<DrmAiWarning> list = service.selectAiWarningList(entity);
        ExcelUtil<DrmAiWarning> util = new ExcelUtil<DrmAiWarning>(DrmAiWarning.class);
        util.exportExcel(response, list, "AI智能预警数据");
    }

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) { return AjaxResult.success(service.selectAiWarningById(id)); }

    @Log(title = "AI智能预警", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrmAiWarning entity) { return toAjax(service.insertAiWarning(entity)); }

    @Log(title = "AI智能预警", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrmAiWarning entity) { return toAjax(service.updateAiWarning(entity)); }

    @Log(title = "AI智能预警", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) { return toAjax(service.deleteAiWarningByIds(ids)); }
}
