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
import com.ai58.drm.domain.CostAllocation;
import com.ai58.drm.service.ICostAllocationService;

/**
 * 成本分摊 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/costAllocation")
public class CostAllocationController extends BaseController
{
    @Autowired
    private ICostAllocationService costallocationService;

    /**
     * 获取成本分摊列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/costAllocation:list')")
    @GetMapping("/list")
    public TableDataInfo list(CostAllocation costallocation)
    {
        startPage();
        List<CostAllocation> list = costallocationService.selectCostAllocationList(costallocation);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/costAllocation:export')")
    @Log(title = "成本分摊", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, CostAllocation costallocation)
    {
        List<CostAllocation> list = costallocationService.selectCostAllocationList(costallocation);
        ExcelUtil<CostAllocation> util = new ExcelUtil<CostAllocation>(CostAllocation.class);
        util.exportExcel(response, list, "成本分摊数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/costAllocation:query')")
    @GetMapping(value = "/{allocationId}")
    public AjaxResult getInfo(@PathVariable Long allocationId)
    {
        return success(costallocationService.selectCostAllocationById(allocationId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/costAllocation:add')")
    @Log(title = "成本分摊", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody CostAllocation costallocation)
    {
        costallocation.setCreateBy(getUsername());
        return toAjax(costallocationService.insertCostAllocation(costallocation));
    }

    // @PreAuthorize("@ss.hasPermi('drm/costAllocation:edit')")
    @Log(title = "成本分摊", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody CostAllocation costallocation)
    {
        costallocation.setUpdateBy(getUsername());
        return toAjax(costallocationService.updateCostAllocation(costallocation));
    }

    // @PreAuthorize("@ss.hasPermi('drm/costAllocation:remove')")
    @Log(title = "成本分摊", businessType = BusinessType.DELETE)
    @DeleteMapping("/{allocationIds}")
    public AjaxResult remove(@PathVariable Long[] allocationIds)
    {
        return toAjax(costallocationService.deleteCostAllocationByIds(allocationIds));
    }
}
