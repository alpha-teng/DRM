package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.PerfPlan;

/**
 * PerfPlan 服务层
 *
 * @author ai58
 */
public interface IPerfPlanService
{
    /**
     * 查询PerfPlan信息
     *
     * @param planId PerfPlanID
     * @return PerfPlan信息
     */
    public PerfPlan selectPerfPlanById(Long planId);

    /**
     * 查询PerfPlan列表
     *
     * @param perfplan PerfPlan信息
     * @return PerfPlan集合
     */
    public List<PerfPlan> selectPerfPlanList(PerfPlan perfplan);

    /**
     * 新增PerfPlan
     *
     * @param perfplan PerfPlan信息
     * @return 结果
     */
    public int insertPerfPlan(PerfPlan perfplan);

    /**
     * 修改PerfPlan
     *
     * @param perfplan PerfPlan信息
     * @return 结果
     */
    public int updatePerfPlan(PerfPlan perfplan);

    /**
     * 删除PerfPlan
     *
     * @param planId PerfPlanID
     * @return 结果
     */
    public int deletePerfPlanById(Long planId);

    /**
     * 批量删除PerfPlan
     *
     * @param planIds 需要删除的PerfPlanID
     * @return 结果
     */
    public int deletePerfPlanByIds(Long[] planIds);
}
