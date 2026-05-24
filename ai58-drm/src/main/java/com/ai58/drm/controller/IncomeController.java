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
import com.ai58.drm.domain.Income;
import com.ai58.drm.service.IIncomeService;

/**
 * 收入管理 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/income")
public class IncomeController extends BaseController
{
    @Autowired
    private IIncomeService incomeService;

    /**
     * 获取收入管理列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/income:list')")
    @GetMapping("/list")
    public TableDataInfo list(Income income)
    {
        startPage();
        List<Income> list = incomeService.selectIncomeList(income);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/income:export')")
    @Log(title = "收入管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Income income)
    {
        List<Income> list = incomeService.selectIncomeList(income);
        ExcelUtil<Income> util = new ExcelUtil<Income>(Income.class);
        util.exportExcel(response, list, "收入管理数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/income:query')")
    @GetMapping(value = "/{incomeId}")
    public AjaxResult getInfo(@PathVariable Long incomeId)
    {
        return success(incomeService.selectIncomeById(incomeId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/income:add')")
    @Log(title = "收入管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Income income)
    {
        income.setCreateBy(getUsername());
        return toAjax(incomeService.insertIncome(income));
    }

    // @PreAuthorize("@ss.hasPermi('drm/income:edit')")
    @Log(title = "收入管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Income income)
    {
        income.setUpdateBy(getUsername());
        return toAjax(incomeService.updateIncome(income));
    }

    // @PreAuthorize("@ss.hasPermi('drm/income:remove')")
    @Log(title = "收入管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{incomeIds}")
    public AjaxResult remove(@PathVariable Long[] incomeIds)
    {
        return toAjax(incomeService.deleteIncomeByIds(incomeIds));
    }
}
