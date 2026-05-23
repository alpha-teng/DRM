package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.KnowledgeCategory;

/**
 * KnowledgeCategory 服务层
 *
 * @author ai58
 */
public interface IKnowledgeCategoryService
{
    /**
     * 查询KnowledgeCategory信息
     *
     * @param categoryId KnowledgeCategoryID
     * @return KnowledgeCategory信息
     */
    public KnowledgeCategory selectKnowledgeCategoryById(Long categoryId);

    /**
     * 查询KnowledgeCategory列表
     *
     * @param knowledgecategory KnowledgeCategory信息
     * @return KnowledgeCategory集合
     */
    public List<KnowledgeCategory> selectKnowledgeCategoryList(KnowledgeCategory knowledgecategory);

    /**
     * 新增KnowledgeCategory
     *
     * @param knowledgecategory KnowledgeCategory信息
     * @return 结果
     */
    public int insertKnowledgeCategory(KnowledgeCategory knowledgecategory);

    /**
     * 修改KnowledgeCategory
     *
     * @param knowledgecategory KnowledgeCategory信息
     * @return 结果
     */
    public int updateKnowledgeCategory(KnowledgeCategory knowledgecategory);

    /**
     * 删除KnowledgeCategory
     *
     * @param categoryId KnowledgeCategoryID
     * @return 结果
     */
    public int deleteKnowledgeCategoryById(Long categoryId);

    /**
     * 批量删除KnowledgeCategory
     *
     * @param categoryIds 需要删除的KnowledgeCategoryID
     * @return 结果
     */
    public int deleteKnowledgeCategoryByIds(Long[] categoryIds);
}
