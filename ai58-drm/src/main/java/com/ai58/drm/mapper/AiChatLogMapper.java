package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.AiChatLog;

/**
 * AI问答日志 数据层
 *
 * @author ai58
 */
public interface AiChatLogMapper {

    public AiChatLog selectAiChatLog(AiChatLog chatLog);
    public List<AiChatLog> selectAiChatLogList(AiChatLog chatLog);
    public int insertAiChatLog(AiChatLog chatLog);
    public int updateAiChatLog(AiChatLog chatLog);
    public int deleteAiChatLogById(Long logId);
    public int deleteAiChatLogByIds(Long[] logIds);
}
