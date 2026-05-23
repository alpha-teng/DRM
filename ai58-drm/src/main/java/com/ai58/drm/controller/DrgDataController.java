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
import com.ai58.drm.domain.DrgData;
import com.ai58.drm.service.IDrgDataService;

/**
 * DRG数据 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/drgData")
public class DrgDataController extends BaseController
{
    @Autowired
    private IDrgDataService drgdataService;

    /**
     * 获取DRG数据列表
     */
    @PreAuthorize("@ss.hasPermi('drm/drgData:list')")
    @GetMapping("/list")
    public TableDataInfo list(DrgData drgdata)
    {
        startPage();
        List<DrgData> list = drgdataService.selectDrgDataList(drgdata);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('drm/drgData:export')")
    @Log(title = "DRG数据", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrgData drgdata)
    {
        List<DrgData> list = drgdataService.selectDrgDataList(drgdata);
        ExcelUtil<DrgData> util = new ExcelUtil<DrgData>(DrgData.class);
        util.exportExcel(response, list, "DRG数据数据");
    }

    @PreAuthorize("@ss.hasPermi('drm/drgData:query')")
    @GetMapping(value = "/{drgId}")
    public AjaxResult getInfo(@PathVariable Long drgId)
    {
        return success(drgdataService.selectDrgDataById(drgId));
    }

    @PreAuthorize("@ss.hasPermi('drm/drgData:add')")
    @Log(title = "DRG数据", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrgData drgdata)
    {
        drgdata.setCreateBy(getUsername());
        return toAjax(drgdataService.insertDrgData(drgdata));
    }

    @PreAuthorize("@ss.hasPermi('drm/drgData:edit')")
    @Log(title = "DRG数据", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrgData drgdata)
    {
        drgdata.setUpdateBy(getUsername());
        return toAjax(drgdataService.updateDrgData(drgdata));
    }

    @PreAuthorize("@ss.hasPermi('drm/drgData:remove')")
    @Log(title = "DRG数据", businessType = BusinessType.DELETE)
    @DeleteMapping("/{drgIds}")
    public AjaxResult remove(@PathVariable Long[] drgIds)
    {
        return toAjax(drgdataService.deleteDrgDataByIds(drgIds));
    }
}
