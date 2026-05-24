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
import com.ai58.drm.domain.CostData;
import com.ai58.drm.service.ICostDataService;

/**
 * 成本数据 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/cost/costData")
public class CostDataController extends BaseController
{
    @Autowired
    private ICostDataService costdataService;

    /**
     * 获取成本数据列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/costData:list')")
    @GetMapping("/list")
    public TableDataInfo list(CostData costdata)
    {
        startPage();
        List<CostData> list = costdataService.selectCostDataList(costdata);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/costData:export')")
    @Log(title = "成本数据", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CostData costdata)
    {
        List<CostData> list = costdataService.selectCostDataList(costdata);
        ExcelUtil<CostData> util = new ExcelUtil<CostData>(CostData.class);
        util.exportExcel(response, list, "成本数据数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/costData:query')")
    @GetMapping(value = "/{costId}")
    public AjaxResult getInfo(@PathVariable Long costId)
    {
        return success(costdataService.selectCostDataById(costId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/costData:add')")
    @Log(title = "成本数据", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CostData costdata)
    {
        costdata.setCreateBy(getUsername());
        return toAjax(costdataService.insertCostData(costdata));
    }

    // @PreAuthorize("@ss.hasPermi('drm/costData:edit')")
    @Log(title = "成本数据", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CostData costdata)
    {
        costdata.setUpdateBy(getUsername());
        return toAjax(costdataService.updateCostData(costdata));
    }

    // @PreAuthorize("@ss.hasPermi('drm/costData:remove')")
    @Log(title = "成本数据", businessType = BusinessType.DELETE)
    @DeleteMapping("/{costIds}")
    public AjaxResult remove(@PathVariable Long[] costIds)
    {
        return toAjax(costdataService.deleteCostDataByIds(costIds));
    }
}
