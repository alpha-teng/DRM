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
import com.ai58.drm.domain.CaseCost;
import com.ai58.drm.service.ICaseCostService;

/**
 * 病种成本Controller
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/costData/caseCost")
public class CaseCostController extends BaseController {
    @Autowired
    private ICaseCostService caseCostService;

    @GetMapping("/list")
    public TableDataInfo list(CaseCost caseCost) {
        startPage();
        List<CaseCost> list = caseCostService.selectCaseCostList(caseCost);
        return getDataTable(list);
    }

    @Log(title = "病种成本", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CaseCost caseCost) {
        List<CaseCost> list = caseCostService.selectCaseCostList(caseCost);
        ExcelUtil<CaseCost> util = new ExcelUtil<CaseCost>(CaseCost.class);
        util.exportExcel(response, list, "病种成本数据");
    }

    @GetMapping(value = "/{caseId}")
    public AjaxResult getInfo(@PathVariable("caseId") Long caseId) {
        return success(caseCostService.selectCaseCostById(caseId));
    }

    @Log(title = "病种成本", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CaseCost caseCost) {
        caseCost.setCreateBy(getUsername());
        return toAjax(caseCostService.insertCaseCost(caseCost));
    }

    @Log(title = "病种成本", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CaseCost caseCost) {
        caseCost.setUpdateBy(getUsername());
        return toAjax(caseCostService.updateCaseCost(caseCost));
    }

    @Log(title = "病种成本", businessType = BusinessType.DELETE)
    @DeleteMapping("/{caseIds}")
    public AjaxResult remove(@PathVariable Long[] caseIds) {
        return toAjax(caseCostService.deleteCaseCostByIds(caseIds));
    }
}
