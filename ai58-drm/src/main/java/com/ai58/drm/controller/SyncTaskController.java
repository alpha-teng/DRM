package com.ai58.drm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ai58.common.annotation.Log;
import com.ai58.common.core.controller.BaseController;
import com.ai58.common.core.domain.AjaxResult;
import com.ai58.common.enums.BusinessType;
import com.ai58.drm.domain.DrmSyncTask;
import com.ai58.drm.service.ISyncTaskService;
import com.ai58.common.utils.poi.ExcelUtil;
import com.ai58.common.core.page.TableDataInfo;

@RestController
@RequestMapping("/drm/syncTask")
public class SyncTaskController extends BaseController {
    @Autowired
    private ISyncTaskService service;

    @GetMapping("/list")
    public TableDataInfo list(DrmSyncTask entity) {
        startPage();
        List<DrmSyncTask> list = service.selectSyncTaskList(entity);
        return getDataTable(list);
    }

    @Log(title = "同步任务", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrmSyncTask entity) {
        List<DrmSyncTask> list = service.selectSyncTaskList(entity);
        ExcelUtil<DrmSyncTask> util = new ExcelUtil<DrmSyncTask>(DrmSyncTask.class);
        util.exportExcel(response, list, "同步任务数据");
    }

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) { return AjaxResult.success(service.selectSyncTaskById(id)); }

    @Log(title = "同步任务", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrmSyncTask entity) { return toAjax(service.insertSyncTask(entity)); }

    @Log(title = "同步任务", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrmSyncTask entity) { return toAjax(service.updateSyncTask(entity)); }

    @Log(title = "同步任务", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) { return toAjax(service.deleteSyncTaskByIds(ids)); }
}
