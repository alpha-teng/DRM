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
import com.ai58.drm.domain.DataMapping;
import com.ai58.drm.service.IDataMappingService;

/**
 * 数据映射 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/dataMapping")
public class DataMappingController extends BaseController
{
    @Autowired
    private IDataMappingService datamappingService;

    /**
     * 获取数据映射列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/dataMapping:list')")
    @GetMapping("/list")
    public TableDataInfo list(DataMapping datamapping)
    {
        startPage();
        List<DataMapping> list = datamappingService.selectDataMappingList(datamapping);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/dataMapping:export')")
    @Log(title = "数据映射", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DataMapping datamapping)
    {
        List<DataMapping> list = datamappingService.selectDataMappingList(datamapping);
        ExcelUtil<DataMapping> util = new ExcelUtil<DataMapping>(DataMapping.class);
        util.exportExcel(response, list, "数据映射数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/dataMapping:query')")
    @GetMapping(value = "/{mappingId}")
    public AjaxResult getInfo(@PathVariable Long mappingId)
    {
        return success(datamappingService.selectDataMappingById(mappingId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/dataMapping:add')")
    @Log(title = "数据映射", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DataMapping datamapping)
    {
        datamapping.setCreateBy(getUsername());
        return toAjax(datamappingService.insertDataMapping(datamapping));
    }

    // @PreAuthorize("@ss.hasPermi('drm/dataMapping:edit')")
    @Log(title = "数据映射", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DataMapping datamapping)
    {
        datamapping.setUpdateBy(getUsername());
        return toAjax(datamappingService.updateDataMapping(datamapping));
    }

    // @PreAuthorize("@ss.hasPermi('drm/dataMapping:remove')")
    @Log(title = "数据映射", businessType = BusinessType.DELETE)
    @DeleteMapping("/{mappingIds}")
    public AjaxResult remove(@PathVariable Long[] mappingIds)
    {
        return toAjax(datamappingService.deleteDataMappingByIds(mappingIds));
    }
}
