package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.AiConfigMapper;
import com.ai58.drm.domain.AiConfig;
import com.ai58.drm.service.IAiConfigService;

/**
 * AiConfig 服务层实现
 *
 * @author ai58
 */
@Service
public class AiConfigServiceImpl implements IAiConfigService
{
    @Autowired
    private AiConfigMapper aiconfigMapper;

    /**
     * 查询AiConfig信息
     *
     * @param configId AiConfigID
     * @return AiConfig信息
     */
    @Override
    public AiConfig selectAiConfigById(Long configId)
    {
        AiConfig entity = new AiConfig();
        entity.setConfigId(configId);
        return aiconfigMapper.selectAiConfig(entity);
    }

    /**
     * 查询AiConfig列表
     *
     * @param aiconfig AiConfig信息
     * @return AiConfig集合
     */
    @Override
    public List<AiConfig> selectAiConfigList(AiConfig aiconfig)
    {
        return aiconfigMapper.selectAiConfigList(aiconfig);
    }

    /**
     * 新增AiConfig
     *
     * @param aiconfig AiConfig信息
     * @return 结果
     */
    @Override
    public int insertAiConfig(AiConfig aiconfig)
    {
        return aiconfigMapper.insertAiConfig(aiconfig);
    }

    /**
     * 修改AiConfig
     *
     * @param aiconfig AiConfig信息
     * @return 结果
     */
    @Override
    public int updateAiConfig(AiConfig aiconfig)
    {
        return aiconfigMapper.updateAiConfig(aiconfig);
    }

    /**
     * 删除AiConfig
     *
     * @param configId AiConfigID
     * @return 结果
     */
    @Override
    public int deleteAiConfigById(Long configId)
    {
        return aiconfigMapper.deleteAiConfigById(configId);
    }

    /**
     * 批量删除AiConfig
     *
     * @param configIds 需要删除的AiConfigID
     * @return 结果
     */
    @Override
    public int deleteAiConfigByIds(Long[] configIds)
    {
        return aiconfigMapper.deleteAiConfigByIds(configIds);
    }
}
