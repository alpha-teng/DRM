package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.BudgetExecute;

public interface IBudgetExecuteService {
    public BudgetExecute selectBudgetExecuteById(Long executeId);
    public List<BudgetExecute> selectBudgetExecuteList(BudgetExecute budgetexecute);
    public int insertBudgetExecute(BudgetExecute budgetexecute);
    public int updateBudgetExecute(BudgetExecute budgetexecute);
    public int deleteBudgetExecuteByIds(Long[] executeIds);
    public int deleteBudgetExecuteById(Long executeId);
}
