package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.SurgeryStats;

/**
 * SurgeryStats 服务层
 *
 * @author ai58
 */
public interface ISurgeryStatsService
{
    /**
     * 查询SurgeryStats信息
     *
     * @param statsId SurgeryStatsID
     * @return SurgeryStats信息
     */
    public SurgeryStats selectSurgeryStatsById(Long statsId);

    /**
     * 查询SurgeryStats列表
     *
     * @param surgerystats SurgeryStats信息
     * @return SurgeryStats集合
     */
    public List<SurgeryStats> selectSurgeryStatsList(SurgeryStats surgerystats);

    /**
     * 新增SurgeryStats
     *
     * @param surgerystats SurgeryStats信息
     * @return 结果
     */
    public int insertSurgeryStats(SurgeryStats surgerystats);

    /**
     * 修改SurgeryStats
     *
     * @param surgerystats SurgeryStats信息
     * @return 结果
     */
    public int updateSurgeryStats(SurgeryStats surgerystats);

    /**
     * 删除SurgeryStats
     *
     * @param statsId SurgeryStatsID
     * @return 结果
     */
    public int deleteSurgeryStatsById(Long statsId);

    /**
     * 批量删除SurgeryStats
     *
     * @param statsIds 需要删除的SurgeryStatsID
     * @return 结果
     */
    public int deleteSurgeryStatsByIds(Long[] statsIds);
}
