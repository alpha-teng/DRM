package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.SurgeryStatsMapper;
import com.ai58.drm.domain.SurgeryStats;
import com.ai58.drm.service.ISurgeryStatsService;

/**
 * SurgeryStats 服务层实现
 *
 * @author ai58
 */
@Service
public class SurgeryStatsServiceImpl implements ISurgeryStatsService
{
    @Autowired
    private SurgeryStatsMapper surgerystatsMapper;

    /**
     * 查询SurgeryStats信息
     *
     * @param statsId SurgeryStatsID
     * @return SurgeryStats信息
     */
    @Override
    public SurgeryStats selectSurgeryStatsById(Long statsId)
    {
        SurgeryStats entity = new SurgeryStats();
        entity.setStatsId(statsId);
        return surgerystatsMapper.selectSurgeryStats(entity);
    }

    /**
     * 查询SurgeryStats列表
     *
     * @param surgerystats SurgeryStats信息
     * @return SurgeryStats集合
     */
    @Override
    public List<SurgeryStats> selectSurgeryStatsList(SurgeryStats surgerystats)
    {
        return surgerystatsMapper.selectSurgeryStatsList(surgerystats);
    }

    /**
     * 新增SurgeryStats
     *
     * @param surgerystats SurgeryStats信息
     * @return 结果
     */
    @Override
    public int insertSurgeryStats(SurgeryStats surgerystats)
    {
        return surgerystatsMapper.insertSurgeryStats(surgerystats);
    }

    /**
     * 修改SurgeryStats
     *
     * @param surgerystats SurgeryStats信息
     * @return 结果
     */
    @Override
    public int updateSurgeryStats(SurgeryStats surgerystats)
    {
        return surgerystatsMapper.updateSurgeryStats(surgerystats);
    }

    /**
     * 删除SurgeryStats
     *
     * @param statsId SurgeryStatsID
     * @return 结果
     */
    @Override
    public int deleteSurgeryStatsById(Long statsId)
    {
        return surgerystatsMapper.deleteSurgeryStatsById(statsId);
    }

    /**
     * 批量删除SurgeryStats
     *
     * @param statsIds 需要删除的SurgeryStatsID
     * @return 结果
     */
    @Override
    public int deleteSurgeryStatsByIds(Long[] statsIds)
    {
        return surgerystatsMapper.deleteSurgeryStatsByIds(statsIds);
    }
}
