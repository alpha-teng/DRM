package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.KnowledgeContentMapper;
import com.ai58.drm.domain.KnowledgeContent;
import com.ai58.drm.service.IKnowledgeContentService;

/**
 * KnowledgeContent 服务层实现
 *
 * @author ai58
 */
@Service
public class KnowledgeContentServiceImpl implements IKnowledgeContentService
{
    @Autowired
    private KnowledgeContentMapper knowledgecontentMapper;

    /**
     * 查询KnowledgeContent信息
     *
     * @param contentId KnowledgeContentID
     * @return KnowledgeContent信息
     */
    @Override
    public KnowledgeContent selectKnowledgeContentById(Long contentId)
    {
        KnowledgeContent entity = new KnowledgeContent();
        entity.setContentId(contentId);
        return knowledgecontentMapper.selectKnowledgeContent(entity);
    }

    /**
     * 查询KnowledgeContent列表
     *
     * @param knowledgecontent KnowledgeContent信息
     * @return KnowledgeContent集合
     */
    @Override
    public List<KnowledgeContent> selectKnowledgeContentList(KnowledgeContent knowledgecontent)
    {
        return knowledgecontentMapper.selectKnowledgeContentList(knowledgecontent);
    }

    /**
     * 新增KnowledgeContent
     *
     * @param knowledgecontent KnowledgeContent信息
     * @return 结果
     */
    @Override
    public int insertKnowledgeContent(KnowledgeContent knowledgecontent)
    {
        return knowledgecontentMapper.insertKnowledgeContent(knowledgecontent);
    }

    /**
     * 修改KnowledgeContent
     *
     * @param knowledgecontent KnowledgeContent信息
     * @return 结果
     */
    @Override
    public int updateKnowledgeContent(KnowledgeContent knowledgecontent)
    {
        return knowledgecontentMapper.updateKnowledgeContent(knowledgecontent);
    }

    /**
     * 删除KnowledgeContent
     *
     * @param contentId KnowledgeContentID
     * @return 结果
     */
    @Override
    public int deleteKnowledgeContentById(Long contentId)
    {
        return knowledgecontentMapper.deleteKnowledgeContentById(contentId);
    }

    /**
     * 批量删除KnowledgeContent
     *
     * @param contentIds 需要删除的KnowledgeContentID
     * @return 结果
     */
    @Override
    public int deleteKnowledgeContentByIds(Long[] contentIds)
    {
        return knowledgecontentMapper.deleteKnowledgeContentByIds(contentIds);
    }
}
