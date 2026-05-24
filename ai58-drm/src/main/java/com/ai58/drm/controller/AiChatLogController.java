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
import com.ai58.drm.domain.AiChatLog;
import com.ai58.drm.service.IAiChatLogService;

/**
 * AI问答日志 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/aiChatLog")
public class AiChatLogController extends BaseController
{
    @Autowired
    private IAiChatLogService aichatlogService;

    /**
     * 获取AI问答日志列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/aiChatLog:list')")
    @GetMapping("/list")
    public TableDataInfo list(AiChatLog aichatlog)
    {
        startPage();
        List<AiChatLog> list = aichatlogService.selectAiChatLogList(aichatlog);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/aiChatLog:export')")
    @Log(title = "AI问答日志", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AiChatLog aichatlog)
    {
        List<AiChatLog> list = aichatlogService.selectAiChatLogList(aichatlog);
        ExcelUtil<AiChatLog> util = new ExcelUtil<AiChatLog>(AiChatLog.class);
        util.exportExcel(response, list, "AI问答日志数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/aiChatLog:query')")
    @GetMapping(value = "/{logId}")
    public AjaxResult getInfo(@PathVariable Long logId)
    {
        return success(aichatlogService.selectAiChatLogById(logId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/aiChatLog:add')")
    @Log(title = "AI问答日志", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AiChatLog aichatlog)
    {
        aichatlog.setCreateBy(getUsername());
        return toAjax(aichatlogService.insertAiChatLog(aichatlog));
    }

    // @PreAuthorize("@ss.hasPermi('drm/aiChatLog:edit')")
    @Log(title = "AI问答日志", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AiChatLog aichatlog)
    {
        aichatlog.setUpdateBy(getUsername());
        return toAjax(aichatlogService.updateAiChatLog(aichatlog));
    }

    // @PreAuthorize("@ss.hasPermi('drm/aiChatLog:remove')")
    @Log(title = "AI问答日志", businessType = BusinessType.DELETE)
    @DeleteMapping("/{logIds}")
    public AjaxResult remove(@PathVariable Long[] logIds)
    {
        return toAjax(aichatlogService.deleteAiChatLogByIds(logIds));
    }
}
