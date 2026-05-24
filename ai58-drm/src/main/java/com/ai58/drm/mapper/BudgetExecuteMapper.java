package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.BudgetExecute;

public interface BudgetExecuteMapper {
    public BudgetExecute selectBudgetExecuteById(Long executeId);
    public List<BudgetExecute> selectBudgetExecuteList(BudgetExecute budgetexecute);
    public int insertBudgetExecute(BudgetExecute budgetexecute);
    public int updateBudgetExecute(BudgetExecute budgetexecute);
    public int deleteBudgetExecuteById(Long executeId);
    public int deleteBudgetExecuteByIds(Long[] executeIds);
}
