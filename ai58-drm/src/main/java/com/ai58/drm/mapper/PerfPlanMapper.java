package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.PerfPlan;

/**
 * 绩效方案 数据层
 *
 * @author ai58
 */
public interface PerfPlanMapper {

    public PerfPlan selectPerfPlan(PerfPlan perfPlan);
    public List<PerfPlan> selectPerfPlanList(PerfPlan perfPlan);
    public int insertPerfPlan(PerfPlan perfPlan);
    public int updatePerfPlan(PerfPlan perfPlan);
    public int deletePerfPlanById(Long planId);
    public int deletePerfPlanByIds(Long[] planIds);
}
