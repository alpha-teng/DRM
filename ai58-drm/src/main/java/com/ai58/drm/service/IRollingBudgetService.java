package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrmRollingBudget;

public interface IRollingBudgetService {
    public DrmRollingBudget selectRollingBudgetById(Long id);
    public List<DrmRollingBudget> selectRollingBudgetList(DrmRollingBudget entity);
    public int insertRollingBudget(DrmRollingBudget entity);
    public int updateRollingBudget(DrmRollingBudget entity);
    public int deleteRollingBudgetByIds(Long[] ids);
    public int deleteRollingBudgetById(Long id);
}
