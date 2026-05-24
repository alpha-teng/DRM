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
import com.ai58.drm.domain.EarlyWarning;
import com.ai58.drm.service.IEarlyWarningService;

/**
 * 预警中心 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/earlyWarning")
public class EarlyWarningController extends BaseController
{
    @Autowired
    private IEarlyWarningService earlywarningService;

    /**
     * 获取预警中心列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/earlyWarning:list')")
    @GetMapping("/list")
    public TableDataInfo list(EarlyWarning earlywarning)
    {
        startPage();
        List<EarlyWarning> list = earlywarningService.selectEarlyWarningList(earlywarning);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/earlyWarning:export')")
    @Log(title = "预警中心", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, EarlyWarning earlywarning)
    {
        List<EarlyWarning> list = earlywarningService.selectEarlyWarningList(earlywarning);
        ExcelUtil<EarlyWarning> util = new ExcelUtil<EarlyWarning>(EarlyWarning.class);
        util.exportExcel(response, list, "预警中心数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/earlyWarning:query')")
    @GetMapping(value = "/{warningId}")
    public AjaxResult getInfo(@PathVariable Long warningId)
    {
        return success(earlywarningService.selectEarlyWarningById(warningId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/earlyWarning:add')")
    @Log(title = "预警中心", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody EarlyWarning earlywarning)
    {
        earlywarning.setCreateBy(getUsername());
        return toAjax(earlywarningService.insertEarlyWarning(earlywarning));
    }

    // @PreAuthorize("@ss.hasPermi('drm/earlyWarning:edit')")
    @Log(title = "预警中心", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody EarlyWarning earlywarning)
    {
        earlywarning.setUpdateBy(getUsername());
        return toAjax(earlywarningService.updateEarlyWarning(earlywarning));
    }

    // @PreAuthorize("@ss.hasPermi('drm/earlyWarning:remove')")
    @Log(title = "预警中心", businessType = BusinessType.DELETE)
    @DeleteMapping("/{warningIds}")
    public AjaxResult remove(@PathVariable Long[] warningIds)
    {
        return toAjax(earlywarningService.deleteEarlyWarningByIds(warningIds));
    }
}
