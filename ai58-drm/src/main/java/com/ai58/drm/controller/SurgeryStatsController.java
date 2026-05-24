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
import com.ai58.drm.domain.SurgeryStats;
import com.ai58.drm.service.ISurgeryStatsService;

/**
 * 手术运营分析 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/surgeryStats")
public class SurgeryStatsController extends BaseController
{
    @Autowired
    private ISurgeryStatsService surgerystatsService;

    /**
     * 获取手术运营分析列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/surgeryStats:list')")
    @GetMapping("/list")
    public TableDataInfo list(SurgeryStats surgerystats)
    {
        startPage();
        List<SurgeryStats> list = surgerystatsService.selectSurgeryStatsList(surgerystats);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/surgeryStats:export')")
    @Log(title = "手术运营分析", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SurgeryStats surgerystats)
    {
        List<SurgeryStats> list = surgerystatsService.selectSurgeryStatsList(surgerystats);
        ExcelUtil<SurgeryStats> util = new ExcelUtil<SurgeryStats>(SurgeryStats.class);
        util.exportExcel(response, list, "手术运营分析数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/surgeryStats:query')")
    @GetMapping(value = "/{statsId}")
    public AjaxResult getInfo(@PathVariable Long statsId)
    {
        return success(surgerystatsService.selectSurgeryStatsById(statsId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/surgeryStats:add')")
    @Log(title = "手术运营分析", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SurgeryStats surgerystats)
    {
        surgerystats.setCreateBy(getUsername());
        return toAjax(surgerystatsService.insertSurgeryStats(surgerystats));
    }

    // @PreAuthorize("@ss.hasPermi('drm/surgeryStats:edit')")
    @Log(title = "手术运营分析", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SurgeryStats surgerystats)
    {
        surgerystats.setUpdateBy(getUsername());
        return toAjax(surgerystatsService.updateSurgeryStats(surgerystats));
    }

    // @PreAuthorize("@ss.hasPermi('drm/surgeryStats:remove')")
    @Log(title = "手术运营分析", businessType = BusinessType.DELETE)
    @DeleteMapping("/{statsIds}")
    public AjaxResult remove(@PathVariable Long[] statsIds)
    {
        return toAjax(surgerystatsService.deleteSurgeryStatsByIds(statsIds));
    }
}
