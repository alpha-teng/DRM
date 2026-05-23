package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.InpatientStats;

/**
 * 住院运营数据 数据层
 *
 * @author ai58
 */
public interface InpatientStatsMapper {

    public InpatientStats selectInpatientStats(InpatientStats stats);
    public List<InpatientStats> selectInpatientStatsList(InpatientStats stats);
    public int insertInpatientStats(InpatientStats stats);
    public int updateInpatientStats(InpatientStats stats);
    public int deleteInpatientStatsById(Long statsId);
    public int deleteInpatientStatsByIds(Long[] statsIds);
}
