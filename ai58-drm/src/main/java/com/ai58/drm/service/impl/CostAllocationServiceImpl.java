package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.CostAllocationMapper;
import com.ai58.drm.domain.CostAllocation;
import com.ai58.drm.service.ICostAllocationService;

/**
 * CostAllocation 服务层实现
 *
 * @author ai58
 */
@Service
public class CostAllocationServiceImpl implements ICostAllocationService
{
    @Autowired
    private CostAllocationMapper costallocationMapper;

    /**
     * 查询CostAllocation信息
     *
     * @param allocationId CostAllocationID
     * @return CostAllocation信息
     */
    @Override
    public CostAllocation selectCostAllocationById(Long allocationId)
    {
        CostAllocation entity = new CostAllocation();
        entity.setAllocationId(allocationId);
        return costallocationMapper.selectCostAllocation(entity);
    }

    /**
     * 查询CostAllocation列表
     *
     * @param costallocation CostAllocation信息
     * @return CostAllocation集合
     */
    @Override
    public List<CostAllocation> selectCostAllocationList(CostAllocation costallocation)
    {
        return costallocationMapper.selectCostAllocationList(costallocation);
    }

    /**
     * 新增CostAllocation
     *
     * @param costallocation CostAllocation信息
     * @return 结果
     */
    @Override
    public int insertCostAllocation(CostAllocation costallocation)
    {
        return costallocationMapper.insertCostAllocation(costallocation);
    }

    /**
     * 修改CostAllocation
     *
     * @param costallocation CostAllocation信息
     * @return 结果
     */
    @Override
    public int updateCostAllocation(CostAllocation costallocation)
    {
        return costallocationMapper.updateCostAllocation(costallocation);
    }

    /**
     * 删除CostAllocation
     *
     * @param allocationId CostAllocationID
     * @return 结果
     */
    @Override
    public int deleteCostAllocationById(Long allocationId)
    {
        return costallocationMapper.deleteCostAllocationById(allocationId);
    }

    /**
     * 批量删除CostAllocation
     *
     * @param allocationIds 需要删除的CostAllocationID
     * @return 结果
     */
    @Override
    public int deleteCostAllocationByIds(Long[] allocationIds)
    {
        return costallocationMapper.deleteCostAllocationByIds(allocationIds);
    }
}
