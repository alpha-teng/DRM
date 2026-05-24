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
import com.ai58.drm.domain.Expense;
import com.ai58.drm.service.IExpenseService;

/**
 * 支出管理 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/expense")
public class ExpenseController extends BaseController
{
    @Autowired
    private IExpenseService expenseService;

    /**
     * 获取支出管理列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/expense:list')")
    @GetMapping("/list")
    public TableDataInfo list(Expense expense)
    {
        startPage();
        List<Expense> list = expenseService.selectExpenseList(expense);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/expense:export')")
    @Log(title = "支出管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Expense expense)
    {
        List<Expense> list = expenseService.selectExpenseList(expense);
        ExcelUtil<Expense> util = new ExcelUtil<Expense>(Expense.class);
        util.exportExcel(response, list, "支出管理数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/expense:query')")
    @GetMapping(value = "/{expenseId}")
    public AjaxResult getInfo(@PathVariable Long expenseId)
    {
        return success(expenseService.selectExpenseById(expenseId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/expense:add')")
    @Log(title = "支出管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Expense expense)
    {
        expense.setCreateBy(getUsername());
        return toAjax(expenseService.insertExpense(expense));
    }

    // @PreAuthorize("@ss.hasPermi('drm/expense:edit')")
    @Log(title = "支出管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Expense expense)
    {
        expense.setUpdateBy(getUsername());
        return toAjax(expenseService.updateExpense(expense));
    }

    // @PreAuthorize("@ss.hasPermi('drm/expense:remove')")
    @Log(title = "支出管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{expenseIds}")
    public AjaxResult remove(@PathVariable Long[] expenseIds)
    {
        return toAjax(expenseService.deleteExpenseByIds(expenseIds));
    }
}
