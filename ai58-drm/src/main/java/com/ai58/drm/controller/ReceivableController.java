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
import com.ai58.drm.domain.Receivable;
import com.ai58.drm.service.IReceivableService;

/**
 * 应收账款 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/receivable")
public class ReceivableController extends BaseController
{
    @Autowired
    private IReceivableService receivableService;

    /**
     * 获取应收账款列表
     */
    @PreAuthorize("@ss.hasPermi('drm/receivable:list')")
    @GetMapping("/list")
    public TableDataInfo list(Receivable receivable)
    {
        startPage();
        List<Receivable> list = receivableService.selectReceivableList(receivable);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('drm/receivable:export')")
    @Log(title = "应收账款", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Receivable receivable)
    {
        List<Receivable> list = receivableService.selectReceivableList(receivable);
        ExcelUtil<Receivable> util = new ExcelUtil<Receivable>(Receivable.class);
        util.exportExcel(response, list, "应收账款数据");
    }

    @PreAuthorize("@ss.hasPermi('drm/receivable:query')")
    @GetMapping(value = "/{receivableId}")
    public AjaxResult getInfo(@PathVariable Long receivableId)
    {
        return success(receivableService.selectReceivableById(receivableId));
    }

    @PreAuthorize("@ss.hasPermi('drm/receivable:add')")
    @Log(title = "应收账款", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Receivable receivable)
    {
        receivable.setCreateBy(getUsername());
        return toAjax(receivableService.insertReceivable(receivable));
    }

    @PreAuthorize("@ss.hasPermi('drm/receivable:edit')")
    @Log(title = "应收账款", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Receivable receivable)
    {
        receivable.setUpdateBy(getUsername());
        return toAjax(receivableService.updateReceivable(receivable));
    }

    @PreAuthorize("@ss.hasPermi('drm/receivable:remove')")
    @Log(title = "应收账款", businessType = BusinessType.DELETE)
    @DeleteMapping("/{receivableIds}")
    public AjaxResult remove(@PathVariable Long[] receivableIds)
    {
        return toAjax(receivableService.deleteReceivableByIds(receivableIds));
    }
}
