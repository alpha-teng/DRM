package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.BudgetEdit;

public interface IBudgetEditService {
    public BudgetEdit selectBudgetEditById(Long budgetId);
    public List<BudgetEdit> selectBudgetEditList(BudgetEdit budgetedit);
    public int insertBudgetEdit(BudgetEdit budgetedit);
    public int updateBudgetEdit(BudgetEdit budgetedit);
    public int deleteBudgetEditByIds(Long[] budgetIds);
    public int deleteBudgetEditById(Long budgetId);
}
