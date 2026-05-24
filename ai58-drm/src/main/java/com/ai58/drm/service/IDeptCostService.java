package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DeptCost;

public interface IDeptCostService {
    public DeptCost selectDeptCostById(Long deptId);
    public List<DeptCost> selectDeptCostList(DeptCost deptCost);
    public int insertDeptCost(DeptCost deptCost);
    public int updateDeptCost(DeptCost deptCost);
    public int deleteDeptCostByIds(Long[] deptIds);
    public int deleteDeptCostById(Long deptId);
}
