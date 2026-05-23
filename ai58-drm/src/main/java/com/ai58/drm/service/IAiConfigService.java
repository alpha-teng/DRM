package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.AiConfig;

/**
 * AiConfig 服务层
 *
 * @author ai58
 */
public interface IAiConfigService
{
    /**
     * 查询AiConfig信息
     *
     * @param configId AiConfigID
     * @return AiConfig信息
     */
    public AiConfig selectAiConfigById(Long configId);

    /**
     * 查询AiConfig列表
     *
     * @param aiconfig AiConfig信息
     * @return AiConfig集合
     */
    public List<AiConfig> selectAiConfigList(AiConfig aiconfig);

    /**
     * 新增AiConfig
     *
     * @param aiconfig AiConfig信息
     * @return 结果
     */
    public int insertAiConfig(AiConfig aiconfig);

    /**
     * 修改AiConfig
     *
     * @param aiconfig AiConfig信息
     * @return 结果
     */
    public int updateAiConfig(AiConfig aiconfig);

    /**
     * 删除AiConfig
     *
     * @param configId AiConfigID
     * @return 结果
     */
    public int deleteAiConfigById(Long configId);

    /**
     * 批量删除AiConfig
     *
     * @param configIds 需要删除的AiConfigID
     * @return 结果
     */
    public int deleteAiConfigByIds(Long[] configIds);
}
