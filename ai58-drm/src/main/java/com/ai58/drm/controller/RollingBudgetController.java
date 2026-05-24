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
import com.ai58.drm.domain.DrmRollingBudget;
import com.ai58.drm.service.IRollingBudgetService;
import com.ai58.common.utils.poi.ExcelUtil;
import com.ai58.common.core.page.TableDataInfo;

@RestController
@RequestMapping("/drm/rollingBudget")
public class RollingBudgetController extends BaseController {
    @Autowired
    private IRollingBudgetService service;

    @GetMapping("/list")
    public TableDataInfo list(DrmRollingBudget entity) {
        startPage();
        List<DrmRollingBudget> list = service.selectRollingBudgetList(entity);
        return getDataTable(list);
    }

    @Log(title = "滚动预算", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrmRollingBudget entity) {
        List<DrmRollingBudget> list = service.selectRollingBudgetList(entity);
        ExcelUtil<DrmRollingBudget> util = new ExcelUtil<DrmRollingBudget>(DrmRollingBudget.class);
        util.exportExcel(response, list, "滚动预算数据");
    }

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) { return AjaxResult.success(service.selectRollingBudgetById(id)); }

    @Log(title = "滚动预算", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrmRollingBudget entity) { return toAjax(service.insertRollingBudget(entity)); }

    @Log(title = "滚动预算", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrmRollingBudget entity) { return toAjax(service.updateRollingBudget(entity)); }

    @Log(title = "滚动预算", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) { return toAjax(service.deleteRollingBudgetByIds(ids)); }
}
