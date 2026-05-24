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
import com.ai58.drm.domain.InpatientStats;
import com.ai58.drm.service.IInpatientStatsService;

/**
 * 住院运营分析 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/inpatientStats")
public class InpatientStatsController extends BaseController
{
    @Autowired
    private IInpatientStatsService inpatientstatsService;

    /**
     * 获取住院运营分析列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/inpatientStats:list')")
    @GetMapping("/list")
    public TableDataInfo list(InpatientStats inpatientstats)
    {
        startPage();
        List<InpatientStats> list = inpatientstatsService.selectInpatientStatsList(inpatientstats);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/inpatientStats:export')")
    @Log(title = "住院运营分析", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, InpatientStats inpatientstats)
    {
        List<InpatientStats> list = inpatientstatsService.selectInpatientStatsList(inpatientstats);
        ExcelUtil<InpatientStats> util = new ExcelUtil<InpatientStats>(InpatientStats.class);
        util.exportExcel(response, list, "住院运营分析数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/inpatientStats:query')")
    @GetMapping(value = "/{statsId}")
    public AjaxResult getInfo(@PathVariable Long statsId)
    {
        return success(inpatientstatsService.selectInpatientStatsById(statsId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/inpatientStats:add')")
    @Log(title = "住院运营分析", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody InpatientStats inpatientstats)
    {
        inpatientstats.setCreateBy(getUsername());
        return toAjax(inpatientstatsService.insertInpatientStats(inpatientstats));
    }

    // @PreAuthorize("@ss.hasPermi('drm/inpatientStats:edit')")
    @Log(title = "住院运营分析", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody InpatientStats inpatientstats)
    {
        inpatientstats.setUpdateBy(getUsername());
        return toAjax(inpatientstatsService.updateInpatientStats(inpatientstats));
    }

    // @PreAuthorize("@ss.hasPermi('drm/inpatientStats:remove')")
    @Log(title = "住院运营分析", businessType = BusinessType.DELETE)
    @DeleteMapping("/{statsIds}")
    public AjaxResult remove(@PathVariable Long[] statsIds)
    {
        return toAjax(inpatientstatsService.deleteInpatientStatsByIds(statsIds));
    }
}
