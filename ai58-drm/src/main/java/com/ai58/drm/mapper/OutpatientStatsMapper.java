package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.OutpatientStats;

/**
 * 门诊运营数据 数据层
 *
 * @author ai58
 */
public interface OutpatientStatsMapper {

    public OutpatientStats selectOutpatientStats(OutpatientStats stats);
    public List<OutpatientStats> selectOutpatientStatsList(OutpatientStats stats);
    public int insertOutpatientStats(OutpatientStats stats);
    public int updateOutpatientStats(OutpatientStats stats);
    public int deleteOutpatientStatsById(Long statsId);
    public int deleteOutpatientStatsByIds(Long[] statsIds);
}
