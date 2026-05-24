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
import com.ai58.drm.domain.PerfPlan;
import com.ai58.drm.service.IPerfPlanService;

/**
 * 绩效方案 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/perfPlan")
public class PerfPlanController extends BaseController
{
    @Autowired
    private IPerfPlanService perfplanService;

    /**
     * 获取绩效方案列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/perfPlan:list')")
    @GetMapping("/list")
    public TableDataInfo list(PerfPlan perfplan)
    {
        startPage();
        List<PerfPlan> list = perfplanService.selectPerfPlanList(perfplan);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/perfPlan:export')")
    @Log(title = "绩效方案", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PerfPlan perfplan)
    {
        List<PerfPlan> list = perfplanService.selectPerfPlanList(perfplan);
        ExcelUtil<PerfPlan> util = new ExcelUtil<PerfPlan>(PerfPlan.class);
        util.exportExcel(response, list, "绩效方案数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/perfPlan:query')")
    @GetMapping(value = "/{planId}")
    public AjaxResult getInfo(@PathVariable Long planId)
    {
        return success(perfplanService.selectPerfPlanById(planId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/perfPlan:add')")
    @Log(title = "绩效方案", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PerfPlan perfplan)
    {
        perfplan.setCreateBy(getUsername());
        return toAjax(perfplanService.insertPerfPlan(perfplan));
    }

    // @PreAuthorize("@ss.hasPermi('drm/perfPlan:edit')")
    @Log(title = "绩效方案", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PerfPlan perfplan)
    {
        perfplan.setUpdateBy(getUsername());
        return toAjax(perfplanService.updatePerfPlan(perfplan));
    }

    // @PreAuthorize("@ss.hasPermi('drm/perfPlan:remove')")
    @Log(title = "绩效方案", businessType = BusinessType.DELETE)
    @DeleteMapping("/{planIds}")
    public AjaxResult remove(@PathVariable Long[] planIds)
    {
        return toAjax(perfplanService.deletePerfPlanByIds(planIds));
    }
}
