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
import com.ai58.drm.domain.BigScreen;
import com.ai58.drm.service.IBigScreenService;

/**
 * 大屏管理 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/bigScreen")
public class BigScreenController extends BaseController
{
    @Autowired
    private IBigScreenService bigscreenService;

    /**
     * 获取大屏管理列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/bigScreen:list')")
    @GetMapping("/list")
    public TableDataInfo list(BigScreen bigscreen)
    {
        startPage();
        List<BigScreen> list = bigscreenService.selectBigScreenList(bigscreen);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/bigScreen:export')")
    @Log(title = "大屏管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, BigScreen bigscreen)
    {
        List<BigScreen> list = bigscreenService.selectBigScreenList(bigscreen);
        ExcelUtil<BigScreen> util = new ExcelUtil<BigScreen>(BigScreen.class);
        util.exportExcel(response, list, "大屏管理数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/bigScreen:query')")
    @GetMapping(value = "/{screenId}")
    public AjaxResult getInfo(@PathVariable Long screenId)
    {
        return success(bigscreenService.selectBigScreenById(screenId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/bigScreen:add')")
    @Log(title = "大屏管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody BigScreen bigscreen)
    {
        bigscreen.setCreateBy(getUsername());
        return toAjax(bigscreenService.insertBigScreen(bigscreen));
    }

    // @PreAuthorize("@ss.hasPermi('drm/bigScreen:edit')")
    @Log(title = "大屏管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody BigScreen bigscreen)
    {
        bigscreen.setUpdateBy(getUsername());
        return toAjax(bigscreenService.updateBigScreen(bigscreen));
    }

    // @PreAuthorize("@ss.hasPermi('drm/bigScreen:remove')")
    @Log(title = "大屏管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{screenIds}")
    public AjaxResult remove(@PathVariable Long[] screenIds)
    {
        return toAjax(bigscreenService.deleteBigScreenByIds(screenIds));
    }
}
