package com.ai58.drm.service.impl;

import java.util.List;
import com.ai58.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.RollingBudgetMapper;
import com.ai58.drm.domain.DrmRollingBudget;
import com.ai58.drm.service.IRollingBudgetService;

@Service
public class RollingBudgetServiceImpl implements IRollingBudgetService {
    @Autowired
    private RollingBudgetMapper mapper;

    @Override
    public DrmRollingBudget selectRollingBudgetById(Long id) { return mapper.selectRollingBudgetById(id); }

    @Override
    public List<DrmRollingBudget> selectRollingBudgetList(DrmRollingBudget entity) { return mapper.selectRollingBudgetList(entity); }

    @Override
    public int insertRollingBudget(DrmRollingBudget entity) {
        entity.setCreateTime(DateUtils.getNowDate());
        return mapper.insertRollingBudget(entity);
    }

    @Override
    public int updateRollingBudget(DrmRollingBudget entity) {
        entity.setUpdateTime(DateUtils.getNowDate());
        return mapper.updateRollingBudget(entity);
    }

    @Override
    public int deleteRollingBudgetByIds(Long[] ids) { return mapper.deleteRollingBudgetByIds(ids); }

    @Override
    public int deleteRollingBudgetById(Long id) { return mapper.deleteRollingBudgetById(id); }
}
