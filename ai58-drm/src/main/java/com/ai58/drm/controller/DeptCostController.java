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
import com.ai58.drm.domain.DeptCost;
import com.ai58.drm.service.IDeptCostService;

/**
 * 科室成本Controller
 */
@RestController
@RequestMapping("/drm/costData/deptCost")
public class DeptCostController extends BaseController {
    @Autowired
    private IDeptCostService deptCostService;

    @GetMapping("/list")
    public TableDataInfo list(DeptCost deptCost) {
        startPage();
        List<DeptCost> list = deptCostService.selectDeptCostList(deptCost);
        return getDataTable(list);
    }

    @Log(title = "科室成本", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DeptCost deptCost) {
        List<DeptCost> list = deptCostService.selectDeptCostList(deptCost);
        ExcelUtil<DeptCost> util = new ExcelUtil<DeptCost>(DeptCost.class);
        util.exportExcel(response, list, "科室成本数据");
    }

    @GetMapping(value = "/{deptId}")
    public AjaxResult getInfo(@PathVariable("deptId") Long deptId) {
        return success(deptCostService.selectDeptCostById(deptId));
    }

    @Log(title = "科室成本", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DeptCost deptCost) {
        deptCost.setCreateBy(getUsername());
        return toAjax(deptCostService.insertDeptCost(deptCost));
    }

    @Log(title = "科室成本", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DeptCost deptCost) {
        deptCost.setUpdateBy(getUsername());
        return toAjax(deptCostService.updateDeptCost(deptCost));
    }

    @Log(title = "科室成本", businessType = BusinessType.DELETE)
    @DeleteMapping("/{deptIds}")
    public AjaxResult remove(@PathVariable Long[] deptIds) {
        return toAjax(deptCostService.deleteDeptCostByIds(deptIds));
    }
}
