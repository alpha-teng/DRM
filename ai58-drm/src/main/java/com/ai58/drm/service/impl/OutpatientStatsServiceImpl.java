package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.OutpatientStatsMapper;
import com.ai58.drm.domain.OutpatientStats;
import com.ai58.drm.service.IOutpatientStatsService;

/**
 * OutpatientStats 服务层实现
 *
 * @author ai58
 */
@Service
public class OutpatientStatsServiceImpl implements IOutpatientStatsService
{
    @Autowired
    private OutpatientStatsMapper outpatientstatsMapper;

    /**
     * 查询OutpatientStats信息
     *
     * @param statsId OutpatientStatsID
     * @return OutpatientStats信息
     */
    @Override
    public OutpatientStats selectOutpatientStatsById(Long statsId)
    {
        OutpatientStats entity = new OutpatientStats();
        entity.setStatsId(statsId);
        return outpatientstatsMapper.selectOutpatientStats(entity);
    }

    /**
     * 查询OutpatientStats列表
     *
     * @param outpatientstats OutpatientStats信息
     * @return OutpatientStats集合
     */
    @Override
    public List<OutpatientStats> selectOutpatientStatsList(OutpatientStats outpatientstats)
    {
        return outpatientstatsMapper.selectOutpatientStatsList(outpatientstats);
    }

    /**
     * 新增OutpatientStats
     *
     * @param outpatientstats OutpatientStats信息
     * @return 结果
     */
    @Override
    public int insertOutpatientStats(OutpatientStats outpatientstats)
    {
        return outpatientstatsMapper.insertOutpatientStats(outpatientstats);
    }

    /**
     * 修改OutpatientStats
     *
     * @param outpatientstats OutpatientStats信息
     * @return 结果
     */
    @Override
    public int updateOutpatientStats(OutpatientStats outpatientstats)
    {
        return outpatientstatsMapper.updateOutpatientStats(outpatientstats);
    }

    /**
     * 删除OutpatientStats
     *
     * @param statsId OutpatientStatsID
     * @return 结果
     */
    @Override
    public int deleteOutpatientStatsById(Long statsId)
    {
        return outpatientstatsMapper.deleteOutpatientStatsById(statsId);
    }

    /**
     * 批量删除OutpatientStats
     *
     * @param statsIds 需要删除的OutpatientStatsID
     * @return 结果
     */
    @Override
    public int deleteOutpatientStatsByIds(Long[] statsIds)
    {
        return outpatientstatsMapper.deleteOutpatientStatsByIds(statsIds);
    }
}
