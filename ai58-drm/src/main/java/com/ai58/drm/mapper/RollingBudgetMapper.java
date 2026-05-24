package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrmRollingBudget;

public interface RollingBudgetMapper {
    public DrmRollingBudget selectRollingBudgetById(Long id);
    public List<DrmRollingBudget> selectRollingBudgetList(DrmRollingBudget entity);
    public int insertRollingBudget(DrmRollingBudget entity);
    public int updateRollingBudget(DrmRollingBudget entity);
    public int deleteRollingBudgetById(Long id);
    public int deleteRollingBudgetByIds(Long[] ids);
}
