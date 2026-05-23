package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.KnowledgeContent;

/**
 * KnowledgeContent 服务层
 *
 * @author ai58
 */
public interface IKnowledgeContentService
{
    /**
     * 查询KnowledgeContent信息
     *
     * @param contentId KnowledgeContentID
     * @return KnowledgeContent信息
     */
    public KnowledgeContent selectKnowledgeContentById(Long contentId);

    /**
     * 查询KnowledgeContent列表
     *
     * @param knowledgecontent KnowledgeContent信息
     * @return KnowledgeContent集合
     */
    public List<KnowledgeContent> selectKnowledgeContentList(KnowledgeContent knowledgecontent);

    /**
     * 新增KnowledgeContent
     *
     * @param knowledgecontent KnowledgeContent信息
     * @return 结果
     */
    public int insertKnowledgeContent(KnowledgeContent knowledgecontent);

    /**
     * 修改KnowledgeContent
     *
     * @param knowledgecontent KnowledgeContent信息
     * @return 结果
     */
    public int updateKnowledgeContent(KnowledgeContent knowledgecontent);

    /**
     * 删除KnowledgeContent
     *
     * @param contentId KnowledgeContentID
     * @return 结果
     */
    public int deleteKnowledgeContentById(Long contentId);

    /**
     * 批量删除KnowledgeContent
     *
     * @param contentIds 需要删除的KnowledgeContentID
     * @return 结果
     */
    public int deleteKnowledgeContentByIds(Long[] contentIds);
}
