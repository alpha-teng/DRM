package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.InpatientStatsMapper;
import com.ai58.drm.domain.InpatientStats;
import com.ai58.drm.service.IInpatientStatsService;

/**
 * InpatientStats 服务层实现
 *
 * @author ai58
 */
@Service
public class InpatientStatsServiceImpl implements IInpatientStatsService
{
    @Autowired
    private InpatientStatsMapper inpatientstatsMapper;

    /**
     * 查询InpatientStats信息
     *
     * @param statsId InpatientStatsID
     * @return InpatientStats信息
     */
    @Override
    public InpatientStats selectInpatientStatsById(Long statsId)
    {
        InpatientStats entity = new InpatientStats();
        entity.setStatsId(statsId);
        return inpatientstatsMapper.selectInpatientStats(entity);
    }

    /**
     * 查询InpatientStats列表
     *
     * @param inpatientstats InpatientStats信息
     * @return InpatientStats集合
     */
    @Override
    public List<InpatientStats> selectInpatientStatsList(InpatientStats inpatientstats)
    {
        return inpatientstatsMapper.selectInpatientStatsList(inpatientstats);
    }

    /**
     * 新增InpatientStats
     *
     * @param inpatientstats InpatientStats信息
     * @return 结果
     */
    @Override
    public int insertInpatientStats(InpatientStats inpatientstats)
    {
        return inpatientstatsMapper.insertInpatientStats(inpatientstats);
    }

    /**
     * 修改InpatientStats
     *
     * @param inpatientstats InpatientStats信息
     * @return 结果
     */
    @Override
    public int updateInpatientStats(InpatientStats inpatientstats)
    {
        return inpatientstatsMapper.updateInpatientStats(inpatientstats);
    }

    /**
     * 删除InpatientStats
     *
     * @param statsId InpatientStatsID
     * @return 结果
     */
    @Override
    public int deleteInpatientStatsById(Long statsId)
    {
        return inpatientstatsMapper.deleteInpatientStatsById(statsId);
    }

    /**
     * 批量删除InpatientStats
     *
     * @param statsIds 需要删除的InpatientStatsID
     * @return 结果
     */
    @Override
    public int deleteInpatientStatsByIds(Long[] statsIds)
    {
        return inpatientstatsMapper.deleteInpatientStatsByIds(statsIds);
    }
}
