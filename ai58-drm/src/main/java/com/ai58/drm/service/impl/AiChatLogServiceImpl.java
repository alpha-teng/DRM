package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.AiChatLogMapper;
import com.ai58.drm.domain.AiChatLog;
import com.ai58.drm.service.IAiChatLogService;

/**
 * AiChatLog 服务层实现
 *
 * @author ai58
 */
@Service
public class AiChatLogServiceImpl implements IAiChatLogService
{
    @Autowired
    private AiChatLogMapper aichatlogMapper;

    /**
     * 查询AiChatLog信息
     *
     * @param logId AiChatLogID
     * @return AiChatLog信息
     */
    @Override
    public AiChatLog selectAiChatLogById(Long logId)
    {
        AiChatLog entity = new AiChatLog();
        entity.setLogId(logId);
        return aichatlogMapper.selectAiChatLog(entity);
    }

    /**
     * 查询AiChatLog列表
     *
     * @param aichatlog AiChatLog信息
     * @return AiChatLog集合
     */
    @Override
    public List<AiChatLog> selectAiChatLogList(AiChatLog aichatlog)
    {
        return aichatlogMapper.selectAiChatLogList(aichatlog);
    }

    /**
     * 新增AiChatLog
     *
     * @param aichatlog AiChatLog信息
     * @return 结果
     */
    @Override
    public int insertAiChatLog(AiChatLog aichatlog)
    {
        return aichatlogMapper.insertAiChatLog(aichatlog);
    }

    /**
     * 修改AiChatLog
     *
     * @param aichatlog AiChatLog信息
     * @return 结果
     */
    @Override
    public int updateAiChatLog(AiChatLog aichatlog)
    {
        return aichatlogMapper.updateAiChatLog(aichatlog);
    }

    /**
     * 删除AiChatLog
     *
     * @param logId AiChatLogID
     * @return 结果
     */
    @Override
    public int deleteAiChatLogById(Long logId)
    {
        return aichatlogMapper.deleteAiChatLogById(logId);
    }

    /**
     * 批量删除AiChatLog
     *
     * @param logIds 需要删除的AiChatLogID
     * @return 结果
     */
    @Override
    public int deleteAiChatLogByIds(Long[] logIds)
    {
        return aichatlogMapper.deleteAiChatLogByIds(logIds);
    }
}
