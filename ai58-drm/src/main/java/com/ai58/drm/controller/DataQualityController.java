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
import com.ai58.drm.domain.DataQuality;
import com.ai58.drm.service.IDataQualityService;

/**
 * 数据质量 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/dataQuality")
public class DataQualityController extends BaseController
{
    @Autowired
    private IDataQualityService dataqualityService;

    /**
     * 获取数据质量列表
     */
    @PreAuthorize("@ss.hasPermi('drm/dataQuality:list')")
    @GetMapping("/list")
    public TableDataInfo list(DataQuality dataquality)
    {
        startPage();
        List<DataQuality> list = dataqualityService.selectDataQualityList(dataquality);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('drm/dataQuality:export')")
    @Log(title = "数据质量", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DataQuality dataquality)
    {
        List<DataQuality> list = dataqualityService.selectDataQualityList(dataquality);
        ExcelUtil<DataQuality> util = new ExcelUtil<DataQuality>(DataQuality.class);
        util.exportExcel(response, list, "数据质量数据");
    }

    @PreAuthorize("@ss.hasPermi('drm/dataQuality:query')")
    @GetMapping(value = "/{qualityId}")
    public AjaxResult getInfo(@PathVariable Long qualityId)
    {
        return success(dataqualityService.selectDataQualityById(qualityId));
    }

    @PreAuthorize("@ss.hasPermi('drm/dataQuality:add')")
    @Log(title = "数据质量", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DataQuality dataquality)
    {
        dataquality.setCreateBy(getUsername());
        return toAjax(dataqualityService.insertDataQuality(dataquality));
    }

    @PreAuthorize("@ss.hasPermi('drm/dataQuality:edit')")
    @Log(title = "数据质量", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DataQuality dataquality)
    {
        dataquality.setUpdateBy(getUsername());
        return toAjax(dataqualityService.updateDataQuality(dataquality));
    }

    @PreAuthorize("@ss.hasPermi('drm/dataQuality:remove')")
    @Log(title = "数据质量", businessType = BusinessType.DELETE)
    @DeleteMapping("/{qualityIds}")
    public AjaxResult remove(@PathVariable Long[] qualityIds)
    {
        return toAjax(dataqualityService.deleteDataQualityByIds(qualityIds));
    }
}
