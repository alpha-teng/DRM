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
import com.ai58.drm.domain.DataSource;
import com.ai58.drm.service.IDataSourceService;

/**
 * 数据源 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/dataSource")
public class DataSourceController extends BaseController
{
    @Autowired
    private IDataSourceService datasourceService;

    /**
     * 获取数据源列表
     */
    @PreAuthorize("@ss.hasPermi('drm/dataSource:list')")
    @GetMapping("/list")
    public TableDataInfo list(DataSource datasource)
    {
        startPage();
        List<DataSource> list = datasourceService.selectDataSourceList(datasource);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('drm/dataSource:export')")
    @Log(title = "数据源", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DataSource datasource)
    {
        List<DataSource> list = datasourceService.selectDataSourceList(datasource);
        ExcelUtil<DataSource> util = new ExcelUtil<DataSource>(DataSource.class);
        util.exportExcel(response, list, "数据源数据");
    }

    @PreAuthorize("@ss.hasPermi('drm/dataSource:query')")
    @GetMapping(value = "/{sourceId}")
    public AjaxResult getInfo(@PathVariable Long sourceId)
    {
        return success(datasourceService.selectDataSourceById(sourceId));
    }

    @PreAuthorize("@ss.hasPermi('drm/dataSource:add')")
    @Log(title = "数据源", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DataSource datasource)
    {
        datasource.setCreateBy(getUsername());
        return toAjax(datasourceService.insertDataSource(datasource));
    }

    @PreAuthorize("@ss.hasPermi('drm/dataSource:edit')")
    @Log(title = "数据源", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DataSource datasource)
    {
        datasource.setUpdateBy(getUsername());
        return toAjax(datasourceService.updateDataSource(datasource));
    }

    @PreAuthorize("@ss.hasPermi('drm/dataSource:remove')")
    @Log(title = "数据源", businessType = BusinessType.DELETE)
    @DeleteMapping("/{sourceIds}")
    public AjaxResult remove(@PathVariable Long[] sourceIds)
    {
        return toAjax(datasourceService.deleteDataSourceByIds(sourceIds));
    }
}
