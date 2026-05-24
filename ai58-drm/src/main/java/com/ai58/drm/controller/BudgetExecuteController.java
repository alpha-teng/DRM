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
import com.ai58.drm.domain.BudgetExecute;
import com.ai58.drm.service.IBudgetExecuteService;

@RestController
@RequestMapping("/drm/budgetExecute")
public class BudgetExecuteController extends BaseController {
    @Autowired
    private IBudgetExecuteService budgetexecuteService;

    @GetMapping("/list")
    public TableDataInfo list(BudgetExecute budgetexecute) {
        startPage();
        List<BudgetExecute> list = budgetexecuteService.selectBudgetExecuteList(budgetexecute);
        return getDataTable(list);
    }

    @Log(title = "预算执行", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BudgetExecute budgetexecute) {
        List<BudgetExecute> list = budgetexecuteService.selectBudgetExecuteList(budgetexecute);
        ExcelUtil<BudgetExecute> util = new ExcelUtil<BudgetExecute>(BudgetExecute.class);
        util.exportExcel(response, list, "预算执行数据");
    }

    @GetMapping(value = "/{executeId}")
    public AjaxResult getInfo(@PathVariable Long executeId) {
        return success(budgetexecuteService.selectBudgetExecuteById(executeId));
    }

    @Log(title = "预算执行", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BudgetExecute budgetexecute) {
        budgetexecute.setCreateBy(getUsername());
        return toAjax(budgetexecuteService.insertBudgetExecute(budgetexecute));
    }

    @Log(title = "预算执行", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BudgetExecute budgetexecute) {
        budgetexecute.setUpdateBy(getUsername());
        return toAjax(budgetexecuteService.updateBudgetExecute(budgetexecute));
    }

    @Log(title = "预算执行", businessType = BusinessType.DELETE)
    @DeleteMapping("/{executeIds}")
    public AjaxResult remove(@PathVariable Long[] executeIds) {
        return toAjax(budgetexecuteService.deleteBudgetExecuteByIds(executeIds));
    }
}
