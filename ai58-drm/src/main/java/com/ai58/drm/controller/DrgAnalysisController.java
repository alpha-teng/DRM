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
import com.ai58.drm.domain.DrgAnalysis;
import com.ai58.drm.service.IDrgAnalysisService;

/**
 * DRG分析 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/drgAnalysis")
public class DrgAnalysisController extends BaseController
{
    @Autowired
    private IDrgAnalysisService drganalysisService;

    /**
     * 获取DRG分析列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/drgAnalysis:list')")
    @GetMapping("/list")
    public TableDataInfo list(DrgAnalysis drganalysis)
    {
        startPage();
        List<DrgAnalysis> list = drganalysisService.selectDrgAnalysisList(drganalysis);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/drgAnalysis:export')")
    @Log(title = "DRG分析", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrgAnalysis drganalysis)
    {
        List<DrgAnalysis> list = drganalysisService.selectDrgAnalysisList(drganalysis);
        ExcelUtil<DrgAnalysis> util = new ExcelUtil<DrgAnalysis>(DrgAnalysis.class);
        util.exportExcel(response, list, "DRG分析数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/drgAnalysis:query')")
    @GetMapping(value = "/{analysisId}")
    public AjaxResult getInfo(@PathVariable Long analysisId)
    {
        return success(drganalysisService.selectDrgAnalysisById(analysisId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/drgAnalysis:add')")
    @Log(title = "DRG分析", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrgAnalysis drganalysis)
    {
        drganalysis.setCreateBy(getUsername());
        return toAjax(drganalysisService.insertDrgAnalysis(drganalysis));
    }

    // @PreAuthorize("@ss.hasPermi('drm/drgAnalysis:edit')")
    @Log(title = "DRG分析", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrgAnalysis drganalysis)
    {
        drganalysis.setUpdateBy(getUsername());
        return toAjax(drganalysisService.updateDrgAnalysis(drganalysis));
    }

    // @PreAuthorize("@ss.hasPermi('drm/drgAnalysis:remove')")
    @Log(title = "DRG分析", businessType = BusinessType.DELETE)
    @DeleteMapping("/{analysisIds}")
    public AjaxResult remove(@PathVariable Long[] analysisIds)
    {
        return toAjax(drganalysisService.deleteDrgAnalysisByIds(analysisIds));
    }
}
