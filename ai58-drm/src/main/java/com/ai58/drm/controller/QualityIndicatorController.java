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
import com.ai58.drm.domain.QualityIndicator;
import com.ai58.drm.service.IQualityIndicatorService;

/**
 * 质量指标 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/qualityIndicator")
public class QualityIndicatorController extends BaseController
{
    @Autowired
    private IQualityIndicatorService qualityindicatorService;

    /**
     * 获取质量指标列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/qualityIndicator:list')")
    @GetMapping("/list")
    public TableDataInfo list(QualityIndicator qualityindicator)
    {
        startPage();
        List<QualityIndicator> list = qualityindicatorService.selectQualityIndicatorList(qualityindicator);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/qualityIndicator:export')")
    @Log(title = "质量指标", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, QualityIndicator qualityindicator)
    {
        List<QualityIndicator> list = qualityindicatorService.selectQualityIndicatorList(qualityindicator);
        ExcelUtil<QualityIndicator> util = new ExcelUtil<QualityIndicator>(QualityIndicator.class);
        util.exportExcel(response, list, "质量指标数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/qualityIndicator:query')")
    @GetMapping(value = "/{indicatorId}")
    public AjaxResult getInfo(@PathVariable Long indicatorId)
    {
        return success(qualityindicatorService.selectQualityIndicatorById(indicatorId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/qualityIndicator:add')")
    @Log(title = "质量指标", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody QualityIndicator qualityindicator)
    {
        qualityindicator.setCreateBy(getUsername());
        return toAjax(qualityindicatorService.insertQualityIndicator(qualityindicator));
    }

    // @PreAuthorize("@ss.hasPermi('drm/qualityIndicator:edit')")
    @Log(title = "质量指标", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody QualityIndicator qualityindicator)
    {
        qualityindicator.setUpdateBy(getUsername());
        return toAjax(qualityindicatorService.updateQualityIndicator(qualityindicator));
    }

    // @PreAuthorize("@ss.hasPermi('drm/qualityIndicator:remove')")
    @Log(title = "质量指标", businessType = BusinessType.DELETE)
    @DeleteMapping("/{indicatorIds}")
    public AjaxResult remove(@PathVariable Long[] indicatorIds)
    {
        return toAjax(qualityindicatorService.deleteQualityIndicatorByIds(indicatorIds));
    }
}
