package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.KnowledgeCategoryMapper;
import com.ai58.drm.domain.KnowledgeCategory;
import com.ai58.drm.service.IKnowledgeCategoryService;

/**
 * KnowledgeCategory 服务层实现
 *
 * @author ai58
 */
@Service
public class KnowledgeCategoryServiceImpl implements IKnowledgeCategoryService
{
    @Autowired
    private KnowledgeCategoryMapper knowledgecategoryMapper;

    /**
     * 查询KnowledgeCategory信息
     *
     * @param categoryId KnowledgeCategoryID
     * @return KnowledgeCategory信息
     */
    @Override
    public KnowledgeCategory selectKnowledgeCategoryById(Long categoryId)
    {
        KnowledgeCategory entity = new KnowledgeCategory();
        entity.setCategoryId(categoryId);
        return knowledgecategoryMapper.selectKnowledgeCategory(entity);
    }

    /**
     * 查询KnowledgeCategory列表
     *
     * @param knowledgecategory KnowledgeCategory信息
     * @return KnowledgeCategory集合
     */
    @Override
    public List<KnowledgeCategory> selectKnowledgeCategoryList(KnowledgeCategory knowledgecategory)
    {
        return knowledgecategoryMapper.selectKnowledgeCategoryList(knowledgecategory);
    }

    /**
     * 新增KnowledgeCategory
     *
     * @param knowledgecategory KnowledgeCategory信息
     * @return 结果
     */
    @Override
    public int insertKnowledgeCategory(KnowledgeCategory knowledgecategory)
    {
        return knowledgecategoryMapper.insertKnowledgeCategory(knowledgecategory);
    }

    /**
     * 修改KnowledgeCategory
     *
     * @param knowledgecategory KnowledgeCategory信息
     * @return 结果
     */
    @Override
    public int updateKnowledgeCategory(KnowledgeCategory knowledgecategory)
    {
        return knowledgecategoryMapper.updateKnowledgeCategory(knowledgecategory);
    }

    /**
     * 删除KnowledgeCategory
     *
     * @param categoryId KnowledgeCategoryID
     * @return 结果
     */
    @Override
    public int deleteKnowledgeCategoryById(Long categoryId)
    {
        return knowledgecategoryMapper.deleteKnowledgeCategoryById(categoryId);
    }

    /**
     * 批量删除KnowledgeCategory
     *
     * @param categoryIds 需要删除的KnowledgeCategoryID
     * @return 结果
     */
    @Override
    public int deleteKnowledgeCategoryByIds(Long[] categoryIds)
    {
        return knowledgecategoryMapper.deleteKnowledgeCategoryByIds(categoryIds);
    }
}
