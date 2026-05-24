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
import com.ai58.drm.domain.AiConfig;
import com.ai58.drm.service.IAiConfigService;

/**
 * AI配置 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/aiConfig")
public class AiConfigController extends BaseController
{
    @Autowired
    private IAiConfigService aiconfigService;

    /**
     * 获取AI配置列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/aiConfig:list')")
    @GetMapping("/list")
    public TableDataInfo list(AiConfig aiconfig)
    {
        startPage();
        List<AiConfig> list = aiconfigService.selectAiConfigList(aiconfig);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/aiConfig:export')")
    @Log(title = "AI配置", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AiConfig aiconfig)
    {
        List<AiConfig> list = aiconfigService.selectAiConfigList(aiconfig);
        ExcelUtil<AiConfig> util = new ExcelUtil<AiConfig>(AiConfig.class);
        util.exportExcel(response, list, "AI配置数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/aiConfig:query')")
    @GetMapping(value = "/{configId}")
    public AjaxResult getInfo(@PathVariable Long configId)
    {
        return success(aiconfigService.selectAiConfigById(configId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/aiConfig:add')")
    @Log(title = "AI配置", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AiConfig aiconfig)
    {
        aiconfig.setCreateBy(getUsername());
        return toAjax(aiconfigService.insertAiConfig(aiconfig));
    }

    // @PreAuthorize("@ss.hasPermi('drm/aiConfig:edit')")
    @Log(title = "AI配置", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AiConfig aiconfig)
    {
        aiconfig.setUpdateBy(getUsername());
        return toAjax(aiconfigService.updateAiConfig(aiconfig));
    }

    // @PreAuthorize("@ss.hasPermi('drm/aiConfig:remove')")
    @Log(title = "AI配置", businessType = BusinessType.DELETE)
    @DeleteMapping("/{configIds}")
    public AjaxResult remove(@PathVariable Long[] configIds)
    {
        return toAjax(aiconfigService.deleteAiConfigByIds(configIds));
    }
}
