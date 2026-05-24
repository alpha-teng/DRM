package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.OperationTopic;

/**
 * 专题分析Service接口
 *
 * @author ai58
 */
public interface IOperationTopicService {
    /**
     * 查询专题分析
     *
     * @param topicId 专题分析主键
     * @return 专题分析
     */
    public OperationTopic selectOperationTopicById(Long topicId);

    /**
     * 查询专题分析列表
     *
     * @param operationTopic 专题分析
     * @return 专题分析集合
     */
    public List<OperationTopic> selectOperationTopicList(OperationTopic operationTopic);

    /**
     * 新增专题分析
     *
     * @param operationTopic 专题分析
     * @return 结果
     */
    public int insertOperationTopic(OperationTopic operationTopic);

    /**
     * 修改专题分析
     *
     * @param operationTopic 专题分析
     * @return 结果
     */
    public int updateOperationTopic(OperationTopic operationTopic);

    /**
     * 批量删除专题分析
     *
     * @param topicIds 需要删除的专题分析主键集合
     * @return 结果
     */
    public int deleteOperationTopicByIds(Long[] topicIds);

    /**
     * 删除专题分析信息
     *
     * @param topicId 专题分析主键
     * @return 结果
     */
    public int deleteOperationTopicById(Long topicId);
}
