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
import com.ai58.drm.domain.KnowledgeCategory;
import com.ai58.drm.service.IKnowledgeCategoryService;

/**
 * 知识分类 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/knowledgeCategory")
public class KnowledgeCategoryController extends BaseController
{
    @Autowired
    private IKnowledgeCategoryService knowledgecategoryService;

    /**
     * 获取知识分类列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/knowledgeCategory:list')")
    @GetMapping("/list")
    public TableDataInfo list(KnowledgeCategory knowledgecategory)
    {
        startPage();
        List<KnowledgeCategory> list = knowledgecategoryService.selectKnowledgeCategoryList(knowledgecategory);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/knowledgeCategory:export')")
    @Log(title = "知识分类", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, KnowledgeCategory knowledgecategory)
    {
        List<KnowledgeCategory> list = knowledgecategoryService.selectKnowledgeCategoryList(knowledgecategory);
        ExcelUtil<KnowledgeCategory> util = new ExcelUtil<KnowledgeCategory>(KnowledgeCategory.class);
        util.exportExcel(response, list, "知识分类数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/knowledgeCategory:query')")
    @GetMapping(value = "/{categoryId}")
    public AjaxResult getInfo(@PathVariable Long categoryId)
    {
        return success(knowledgecategoryService.selectKnowledgeCategoryById(categoryId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/knowledgeCategory:add')")
    @Log(title = "知识分类", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody KnowledgeCategory knowledgecategory)
    {
        knowledgecategory.setCreateBy(getUsername());
        return toAjax(knowledgecategoryService.insertKnowledgeCategory(knowledgecategory));
    }

    // @PreAuthorize("@ss.hasPermi('drm/knowledgeCategory:edit')")
    @Log(title = "知识分类", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody KnowledgeCategory knowledgecategory)
    {
        knowledgecategory.setUpdateBy(getUsername());
        return toAjax(knowledgecategoryService.updateKnowledgeCategory(knowledgecategory));
    }

    // @PreAuthorize("@ss.hasPermi('drm/knowledgeCategory:remove')")
    @Log(title = "知识分类", businessType = BusinessType.DELETE)
    @DeleteMapping("/{categoryIds}")
    public AjaxResult remove(@PathVariable Long[] categoryIds)
    {
        return toAjax(knowledgecategoryService.deleteKnowledgeCategoryByIds(categoryIds));
    }
}
