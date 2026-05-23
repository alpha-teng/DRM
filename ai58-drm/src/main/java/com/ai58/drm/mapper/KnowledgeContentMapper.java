package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.KnowledgeContent;

/**
 * 知识内容 数据层
 *
 * @author ai58
 */
public interface KnowledgeContentMapper {

    public KnowledgeContent selectKnowledgeContent(KnowledgeContent content);
    public List<KnowledgeContent> selectKnowledgeContentList(KnowledgeContent content);
    public int insertKnowledgeContent(KnowledgeContent content);
    public int updateKnowledgeContent(KnowledgeContent content);
    public int deleteKnowledgeContentById(Long contentId);
    public int deleteKnowledgeContentByIds(Long[] contentIds);
}
