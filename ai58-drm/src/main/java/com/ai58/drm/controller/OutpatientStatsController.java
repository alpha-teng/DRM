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
import com.ai58.drm.domain.OutpatientStats;
import com.ai58.drm.service.IOutpatientStatsService;

/**
 * 门诊运营分析 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/outpatientStats")
public class OutpatientStatsController extends BaseController
{
    @Autowired
    private IOutpatientStatsService outpatientstatsService;

    /**
     * 获取门诊运营分析列表
     */
    @PreAuthorize("@ss.hasPermi('drm/outpatientStats:list')")
    @GetMapping("/list")
    public TableDataInfo list(OutpatientStats outpatientstats)
    {
        startPage();
        List<OutpatientStats> list = outpatientstatsService.selectOutpatientStatsList(outpatientstats);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('drm/outpatientStats:export')")
    @Log(title = "门诊运营分析", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, OutpatientStats outpatientstats)
    {
        List<OutpatientStats> list = outpatientstatsService.selectOutpatientStatsList(outpatientstats);
        ExcelUtil<OutpatientStats> util = new ExcelUtil<OutpatientStats>(OutpatientStats.class);
        util.exportExcel(response, list, "门诊运营分析数据");
    }

    @PreAuthorize("@ss.hasPermi('drm/outpatientStats:query')")
    @GetMapping(value = "/{statsId}")
    public AjaxResult getInfo(@PathVariable Long statsId)
    {
        return success(outpatientstatsService.selectOutpatientStatsById(statsId));
    }

    @PreAuthorize("@ss.hasPermi('drm/outpatientStats:add')")
    @Log(title = "门诊运营分析", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OutpatientStats outpatientstats)
    {
        outpatientstats.setCreateBy(getUsername());
        return toAjax(outpatientstatsService.insertOutpatientStats(outpatientstats));
    }

    @PreAuthorize("@ss.hasPermi('drm/outpatientStats:edit')")
    @Log(title = "门诊运营分析", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OutpatientStats outpatientstats)
    {
        outpatientstats.setUpdateBy(getUsername());
        return toAjax(outpatientstatsService.updateOutpatientStats(outpatientstats));
    }

    @PreAuthorize("@ss.hasPermi('drm/outpatientStats:remove')")
    @Log(title = "门诊运营分析", businessType = BusinessType.DELETE)
    @DeleteMapping("/{statsIds}")
    public AjaxResult remove(@PathVariable Long[] statsIds)
    {
        return toAjax(outpatientstatsService.deleteOutpatientStatsByIds(statsIds));
    }
}
