package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.PerfPlanMapper;
import com.ai58.drm.domain.PerfPlan;
import com.ai58.drm.service.IPerfPlanService;

/**
 * PerfPlan 服务层实现
 *
 * @author ai58
 */
@Service
public class PerfPlanServiceImpl implements IPerfPlanService
{
    @Autowired
    private PerfPlanMapper perfplanMapper;

    /**
     * 查询PerfPlan信息
     *
     * @param planId PerfPlanID
     * @return PerfPlan信息
     */
    @Override
    public PerfPlan selectPerfPlanById(Long planId)
    {
        PerfPlan entity = new PerfPlan();
        entity.setPlanId(planId);
        return perfplanMapper.selectPerfPlan(entity);
    }

    /**
     * 查询PerfPlan列表
     *
     * @param perfplan PerfPlan信息
     * @return PerfPlan集合
     */
    @Override
    public List<PerfPlan> selectPerfPlanList(PerfPlan perfplan)
    {
        return perfplanMapper.selectPerfPlanList(perfplan);
    }

    /**
     * 新增PerfPlan
     *
     * @param perfplan PerfPlan信息
     * @return 结果
     */
    @Override
    public int insertPerfPlan(PerfPlan perfplan)
    {
        return perfplanMapper.insertPerfPlan(perfplan);
    }

    /**
     * 修改PerfPlan
     *
     * @param perfplan PerfPlan信息
     * @return 结果
     */
    @Override
    public int updatePerfPlan(PerfPlan perfplan)
    {
        return perfplanMapper.updatePerfPlan(perfplan);
    }

    /**
     * 删除PerfPlan
     *
     * @param planId PerfPlanID
     * @return 结果
     */
    @Override
    public int deletePerfPlanById(Long planId)
    {
        return perfplanMapper.deletePerfPlanById(planId);
    }

    /**
     * 批量删除PerfPlan
     *
     * @param planIds 需要删除的PerfPlanID
     * @return 结果
     */
    @Override
    public int deletePerfPlanByIds(Long[] planIds)
    {
        return perfplanMapper.deletePerfPlanByIds(planIds);
    }
}
