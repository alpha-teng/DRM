package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.InpatientStats;

/**
 * InpatientStats 服务层
 *
 * @author ai58
 */
public interface IInpatientStatsService
{
    /**
     * 查询InpatientStats信息
     *
     * @param statsId InpatientStatsID
     * @return InpatientStats信息
     */
    public InpatientStats selectInpatientStatsById(Long statsId);

    /**
     * 查询InpatientStats列表
     *
     * @param inpatientstats InpatientStats信息
     * @return InpatientStats集合
     */
    public List<InpatientStats> selectInpatientStatsList(InpatientStats inpatientstats);

    /**
     * 新增InpatientStats
     *
     * @param inpatientstats InpatientStats信息
     * @return 结果
     */
    public int insertInpatientStats(InpatientStats inpatientstats);

    /**
     * 修改InpatientStats
     *
     * @param inpatientstats InpatientStats信息
     * @return 结果
     */
    public int updateInpatientStats(InpatientStats inpatientstats);

    /**
     * 删除InpatientStats
     *
     * @param statsId InpatientStatsID
     * @return 结果
     */
    public int deleteInpatientStatsById(Long statsId);

    /**
     * 批量删除InpatientStats
     *
     * @param statsIds 需要删除的InpatientStatsID
     * @return 结果
     */
    public int deleteInpatientStatsByIds(Long[] statsIds);
}
