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
import com.ai58.drm.domain.KnowledgeContent;
import com.ai58.drm.service.IKnowledgeContentService;

/**
 * 知识内容 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/knowledgeContent")
public class KnowledgeContentController extends BaseController
{
    @Autowired
    private IKnowledgeContentService knowledgecontentService;

    /**
     * 获取知识内容列表
     */
    @PreAuthorize("@ss.hasPermi('drm/knowledgeContent:list')")
    @GetMapping("/list")
    public TableDataInfo list(KnowledgeContent knowledgecontent)
    {
        startPage();
        List<KnowledgeContent> list = knowledgecontentService.selectKnowledgeContentList(knowledgecontent);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('drm/knowledgeContent:export')")
    @Log(title = "知识内容", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, KnowledgeContent knowledgecontent)
    {
        List<KnowledgeContent> list = knowledgecontentService.selectKnowledgeContentList(knowledgecontent);
        ExcelUtil<KnowledgeContent> util = new ExcelUtil<KnowledgeContent>(KnowledgeContent.class);
        util.exportExcel(response, list, "知识内容数据");
    }

    @PreAuthorize("@ss.hasPermi('drm/knowledgeContent:query')")
    @GetMapping(value = "/{contentId}")
    public AjaxResult getInfo(@PathVariable Long contentId)
    {
        return success(knowledgecontentService.selectKnowledgeContentById(contentId));
    }

    @PreAuthorize("@ss.hasPermi('drm/knowledgeContent:add')")
    @Log(title = "知识内容", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody KnowledgeContent knowledgecontent)
    {
        knowledgecontent.setCreateBy(getUsername());
        return toAjax(knowledgecontentService.insertKnowledgeContent(knowledgecontent));
    }

    @PreAuthorize("@ss.hasPermi('drm/knowledgeContent:edit')")
    @Log(title = "知识内容", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody KnowledgeContent knowledgecontent)
    {
        knowledgecontent.setUpdateBy(getUsername());
        return toAjax(knowledgecontentService.updateKnowledgeContent(knowledgecontent));
    }

    @PreAuthorize("@ss.hasPermi('drm/knowledgeContent:remove')")
    @Log(title = "知识内容", businessType = BusinessType.DELETE)
    @DeleteMapping("/{contentIds}")
    public AjaxResult remove(@PathVariable Long[] contentIds)
    {
        return toAjax(knowledgecontentService.deleteKnowledgeContentByIds(contentIds));
    }
}
