package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.AiChatLog;

/**
 * AiChatLog 服务层
 *
 * @author ai58
 */
public interface IAiChatLogService
{
    /**
     * 查询AiChatLog信息
     *
     * @param logId AiChatLogID
     * @return AiChatLog信息
     */
    public AiChatLog selectAiChatLogById(Long logId);

    /**
     * 查询AiChatLog列表
     *
     * @param aichatlog AiChatLog信息
     * @return AiChatLog集合
     */
    public List<AiChatLog> selectAiChatLogList(AiChatLog aichatlog);

    /**
     * 新增AiChatLog
     *
     * @param aichatlog AiChatLog信息
     * @return 结果
     */
    public int insertAiChatLog(AiChatLog aichatlog);

    /**
     * 修改AiChatLog
     *
     * @param aichatlog AiChatLog信息
     * @return 结果
     */
    public int updateAiChatLog(AiChatLog aichatlog);

    /**
     * 删除AiChatLog
     *
     * @param logId AiChatLogID
     * @return 结果
     */
    public int deleteAiChatLogById(Long logId);

    /**
     * 批量删除AiChatLog
     *
     * @param logIds 需要删除的AiChatLogID
     * @return 结果
     */
    public int deleteAiChatLogByIds(Long[] logIds);
}
