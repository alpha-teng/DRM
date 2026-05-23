package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.AiConfig;

/**
 * AI配置 数据层
 *
 * @author ai58
 */
public interface AiConfigMapper {

    public AiConfig selectAiConfig(AiConfig config);
    public List<AiConfig> selectAiConfigList(AiConfig config);
    public int insertAiConfig(AiConfig config);
    public int updateAiConfig(AiConfig config);
    public int deleteAiConfigById(Long configId);
    public int deleteAiConfigByIds(Long[] configIds);
}
