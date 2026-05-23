package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.CostAllocation;

/**
 * 成本分摊结果 数据层
 *
 * @author ai58
 */
public interface CostAllocationMapper {

    public CostAllocation selectCostAllocation(CostAllocation allocation);
    public List<CostAllocation> selectCostAllocationList(CostAllocation allocation);
    public int insertCostAllocation(CostAllocation allocation);
    public int updateCostAllocation(CostAllocation allocation);
    public int deleteCostAllocationById(Long allocationId);
    public int deleteCostAllocationByIds(Long[] allocationIds);
}
