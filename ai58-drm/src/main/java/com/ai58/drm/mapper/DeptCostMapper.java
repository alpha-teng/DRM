package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DeptCost;

public interface DeptCostMapper {
    public DeptCost selectDeptCostById(Long deptId);
    public List<DeptCost> selectDeptCostList(DeptCost deptCost);
    public int insertDeptCost(DeptCost deptCost);
    public int updateDeptCost(DeptCost deptCost);
    public int deleteDeptCostById(Long deptId);
    public int deleteDeptCostByIds(Long[] deptIds);
}
