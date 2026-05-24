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
import com.ai58.drm.domain.BudgetEdit;
import com.ai58.drm.service.IBudgetEditService;

@RestController
@RequestMapping("drm/budgetEdit")
public class BudgetEditController extends BaseController {
    @Autowired
    private IBudgetEditService budgeteditService;

    @GetMapping("/list")
    public TableDataInfo list(BudgetEdit budgetedit) {
        startPage();
        List<BudgetEdit> list = budgeteditService.selectBudgetEditList(budgetedit);
        return getDataTable(list);
    }

    @Log(title = "预算编制", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BudgetEdit budgetedit) {
        List<BudgetEdit> list = budgeteditService.selectBudgetEditList(budgetedit);
        ExcelUtil<BudgetEdit> util = new ExcelUtil<BudgetEdit>(BudgetEdit.class);
        util.exportExcel(response, list, "预算编制数据");
    }

    @GetMapping(value = "/{budgetId}")
    public AjaxResult getInfo(@PathVariable Long budgetId) {
        return success(budgeteditService.selectBudgetEditById(budgetId));
    }

    @Log(title = "预算编制", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BudgetEdit budgetedit) {
        budgetedit.setCreateBy(getUsername());
        return toAjax(budgeteditService.insertBudgetEdit(budgetedit));
    }

    @Log(title = "预算编制", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BudgetEdit budgetedit) {
        budgetedit.setUpdateBy(getUsername());
        return toAjax(budgeteditService.updateBudgetEdit(budgetedit));
    }

    @Log(title = "预算编制", businessType = BusinessType.DELETE)
    @DeleteMapping("/{budgetIds}")
    public AjaxResult remove(@PathVariable Long[] budgetIds) {
        return toAjax(budgeteditService.deleteBudgetEditByIds(budgetIds));
    }
}
