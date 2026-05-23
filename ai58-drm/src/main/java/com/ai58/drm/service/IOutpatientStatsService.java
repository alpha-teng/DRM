package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.OutpatientStats;

/**
 * OutpatientStats 服务层
 *
 * @author ai58
 */
public interface IOutpatientStatsService
{
    /**
     * 查询OutpatientStats信息
     *
     * @param statsId OutpatientStatsID
     * @return OutpatientStats信息
     */
    public OutpatientStats selectOutpatientStatsById(Long statsId);

    /**
     * 查询OutpatientStats列表
     *
     * @param outpatientstats OutpatientStats信息
     * @return OutpatientStats集合
     */
    public List<OutpatientStats> selectOutpatientStatsList(OutpatientStats outpatientstats);

    /**
     * 新增OutpatientStats
     *
     * @param outpatientstats OutpatientStats信息
     * @return 结果
     */
    public int insertOutpatientStats(OutpatientStats outpatientstats);

    /**
     * 修改OutpatientStats
     *
     * @param outpatientstats OutpatientStats信息
     * @return 结果
     */
    public int updateOutpatientStats(OutpatientStats outpatientstats);

    /**
     * 删除OutpatientStats
     *
     * @param statsId OutpatientStatsID
     * @return 结果
     */
    public int deleteOutpatientStatsById(Long statsId);

    /**
     * 批量删除OutpatientStats
     *
     * @param statsIds 需要删除的OutpatientStatsID
     * @return 结果
     */
    public int deleteOutpatientStatsByIds(Long[] statsIds);
}
