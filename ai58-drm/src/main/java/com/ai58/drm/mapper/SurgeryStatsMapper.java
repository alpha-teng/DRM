package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.SurgeryStats;

/**
 * 手术运营数据 数据层
 *
 * @author ai58
 */
public interface SurgeryStatsMapper {

    public SurgeryStats selectSurgeryStats(SurgeryStats stats);
    public List<SurgeryStats> selectSurgeryStatsList(SurgeryStats stats);
    public int insertSurgeryStats(SurgeryStats stats);
    public int updateSurgeryStats(SurgeryStats stats);
    public int deleteSurgeryStatsById(Long statsId);
    public int deleteSurgeryStatsByIds(Long[] statsIds);
}
