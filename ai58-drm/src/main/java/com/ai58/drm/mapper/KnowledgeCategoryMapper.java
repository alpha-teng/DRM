package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.KnowledgeCategory;

/**
 * 知识分类 数据层
 *
 * @author ai58
 */
public interface KnowledgeCategoryMapper {

    public KnowledgeCategory selectKnowledgeCategory(KnowledgeCategory category);
    public List<KnowledgeCategory> selectKnowledgeCategoryList(KnowledgeCategory category);
    public int insertKnowledgeCategory(KnowledgeCategory category);
    public int updateKnowledgeCategory(KnowledgeCategory category);
    public int deleteKnowledgeCategoryById(Long categoryId);
    public int deleteKnowledgeCategoryByIds(Long[] categoryIds);
}
