package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.OperationTopicMapper;
import com.ai58.drm.domain.OperationTopic;
import com.ai58.drm.service.IOperationTopicService;

/**
 * 专题分析Service业务层处理
 *
 * @author ai58
 */
@Service
public class OperationTopicServiceImpl implements IOperationTopicService {
    @Autowired
    private OperationTopicMapper operationTopicMapper;

    /**
     * 查询专题分析
     *
     * @param topicId 专题分析主键
     * @return 专题分析
     */
    @Override
    public OperationTopic selectOperationTopicById(Long topicId) {
        return operationTopicMapper.selectOperationTopicById(topicId);
    }

    /**
     * 查询专题分析列表
     *
     * @param operationTopic 专题分析
     * @return 专题分析
     */
    @Override
    public List<OperationTopic> selectOperationTopicList(OperationTopic operationTopic) {
        return operationTopicMapper.selectOperationTopicList(operationTopic);
    }

    /**
     * 新增专题分析
     *
     * @param operationTopic 专题分析
     * @return 结果
     */
    @Override
    public int insertOperationTopic(OperationTopic operationTopic) {
        return operationTopicMapper.insertOperationTopic(operationTopic);
    }

    /**
     * 修改专题分析
     *
     * @param operationTopic 专题分析
     * @return 结果
     */
    @Override
    public int updateOperationTopic(OperationTopic operationTopic) {
        return operationTopicMapper.updateOperationTopic(operationTopic);
    }

    /**
     * 批量删除专题分析
     *
     * @param topicIds 需要删除的专题分析主键
     * @return 结果
     */
    @Override
    public int deleteOperationTopicByIds(Long[] topicIds) {
        return operationTopicMapper.deleteOperationTopicByIds(topicIds);
    }

    /**
     * 删除专题分析信息
     *
     * @param topicId 专题分析主键
     * @return 结果
     */
    @Override
    public int deleteOperationTopicById(Long topicId) {
        return operationTopicMapper.deleteOperationTopicById(topicId);
    }
}
