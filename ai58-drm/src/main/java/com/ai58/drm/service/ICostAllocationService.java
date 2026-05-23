package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.CostAllocation;

/**
 * CostAllocation 服务层
 *
 * @author ai58
 */
public interface ICostAllocationService
{
    /**
     * 查询CostAllocation信息
     *
     * @param allocationId CostAllocationID
     * @return CostAllocation信息
     */
    public CostAllocation selectCostAllocationById(Long allocationId);

    /**
     * 查询CostAllocation列表
     *
     * @param costallocation CostAllocation信息
     * @return CostAllocation集合
     */
    public List<CostAllocation> selectCostAllocationList(CostAllocation costallocation);

    /**
     * 新增CostAllocation
     *
     * @param costallocation CostAllocation信息
     * @return 结果
     */
    public int insertCostAllocation(CostAllocation costallocation);

    /**
     * 修改CostAllocation
     *
     * @param costallocation CostAllocation信息
     * @return 结果
     */
    public int updateCostAllocation(CostAllocation costallocation);

    /**
     * 删除CostAllocation
     *
     * @param allocationId CostAllocationID
     * @return 结果
     */
    public int deleteCostAllocationById(Long allocationId);

    /**
     * 批量删除CostAllocation
     *
     * @param allocationIds 需要删除的CostAllocationID
     * @return 结果
     */
    public int deleteCostAllocationByIds(Long[] allocationIds);
}
