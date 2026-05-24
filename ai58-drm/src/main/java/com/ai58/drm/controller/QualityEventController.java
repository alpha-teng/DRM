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
import com.ai58.drm.domain.QualityEvent;
import com.ai58.drm.service.IQualityEventService;

/**
 * 不良事件 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/qualityEvent")
public class QualityEventController extends BaseController
{
    @Autowired
    private IQualityEventService qualityeventService;

    /**
     * 获取不良事件列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/qualityEvent:list')")
    @GetMapping("/list")
    public TableDataInfo list(QualityEvent qualityevent)
    {
        startPage();
        List<QualityEvent> list = qualityeventService.selectQualityEventList(qualityevent);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/qualityEvent:export')")
    @Log(title = "不良事件", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, QualityEvent qualityevent)
    {
        List<QualityEvent> list = qualityeventService.selectQualityEventList(qualityevent);
        ExcelUtil<QualityEvent> util = new ExcelUtil<QualityEvent>(QualityEvent.class);
        util.exportExcel(response, list, "不良事件数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/qualityEvent:query')")
    @GetMapping(value = "/{eventId}")
    public AjaxResult getInfo(@PathVariable Long eventId)
    {
        return success(qualityeventService.selectQualityEventById(eventId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/qualityEvent:add')")
    @Log(title = "不良事件", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody QualityEvent qualityevent)
    {
        qualityevent.setCreateBy(getUsername());
        return toAjax(qualityeventService.insertQualityEvent(qualityevent));
    }

    // @PreAuthorize("@ss.hasPermi('drm/qualityEvent:edit')")
    @Log(title = "不良事件", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody QualityEvent qualityevent)
    {
        qualityevent.setUpdateBy(getUsername());
        return toAjax(qualityeventService.updateQualityEvent(qualityevent));
    }

    // @PreAuthorize("@ss.hasPermi('drm/qualityEvent:remove')")
    @Log(title = "不良事件", businessType = BusinessType.DELETE)
    @DeleteMapping("/{eventIds}")
    public AjaxResult remove(@PathVariable Long[] eventIds)
    {
        return toAjax(qualityeventService.deleteQualityEventByIds(eventIds));
    }
}
