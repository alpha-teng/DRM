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
import com.ai58.drm.domain.ProjectCost;
import com.ai58.drm.service.IProjectCostService;

@RestController
@RequestMapping("/drm/costData/projectCost")
public class ProjectCostController extends BaseController {
    @Autowired
    private IProjectCostService projectCostService;

    @GetMapping("/list")
    public TableDataInfo list(ProjectCost projectCost) {
        startPage();
        List<ProjectCost> list = projectCostService.selectProjectCostList(projectCost);
        return getDataTable(list);
    }

    @GetMapping(value = "/{projectId}")
    public AjaxResult getInfo(@PathVariable("projectId") Long projectId) {
        return success(projectCostService.selectProjectCostById(projectId));
    }

    @Log(title = "项目成本", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ProjectCost projectCost) {
        projectCost.setCreateBy(getUsername());
        return toAjax(projectCostService.insertProjectCost(projectCost));
    }

    @Log(title = "项目成本", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ProjectCost projectCost) {
        projectCost.setUpdateBy(getUsername());
        return toAjax(projectCostService.updateProjectCost(projectCost));
    }

    @Log(title = "项目成本", businessType = BusinessType.DELETE)
    @DeleteMapping("/{projectIds}")
    public AjaxResult remove(@PathVariable Long[] projectIds) {
        return toAjax(projectCostService.deleteProjectCostByIds(projectIds));
    }
}
