package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.DeptCostMapper;
import com.ai58.drm.domain.DeptCost;
import com.ai58.drm.service.IDeptCostService;

@Service
public class DeptCostServiceImpl implements IDeptCostService {
    @Autowired
    private DeptCostMapper deptCostMapper;

    @Override
    public DeptCost selectDeptCostById(Long deptId) {
        return deptCostMapper.selectDeptCostById(deptId);
    }

    @Override
    public List<DeptCost> selectDeptCostList(DeptCost deptCost) {
        return deptCostMapper.selectDeptCostList(deptCost);
    }

    @Override
    public int insertDeptCost(DeptCost deptCost) {
        return deptCostMapper.insertDeptCost(deptCost);
    }

    @Override
    public int updateDeptCost(DeptCost deptCost) {
        return deptCostMapper.updateDeptCost(deptCost);
    }

    @Override
    public int deleteDeptCostByIds(Long[] deptIds) {
        return deptCostMapper.deleteDeptCostByIds(deptIds);
    }

    @Override
    public int deleteDeptCostById(Long deptId) {
        return deptCostMapper.deleteDeptCostById(deptId);
    }
}
