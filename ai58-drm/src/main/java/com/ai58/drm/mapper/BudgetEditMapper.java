package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.BudgetEdit;

public interface BudgetEditMapper {
    public BudgetEdit selectBudgetEditById(Long budgetId);
    public List<BudgetEdit> selectBudgetEditList(BudgetEdit budgetedit);
    public int insertBudgetEdit(BudgetEdit budgetedit);
    public int updateBudgetEdit(BudgetEdit budgetedit);
    public int deleteBudgetEditById(Long budgetId);
    public int deleteBudgetEditByIds(Long[] budgetIds);
}
