package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.BudgetEditMapper;
import com.ai58.drm.domain.BudgetEdit;
import com.ai58.drm.service.IBudgetEditService;

@Service
public class BudgetEditServiceImpl implements IBudgetEditService {
    @Autowired
    private BudgetEditMapper budgetEditMapper;

    @Override
    public BudgetEdit selectBudgetEditById(Long budgetId) {
        return budgetEditMapper.selectBudgetEditById(budgetId);
    }

    @Override
    public List<BudgetEdit> selectBudgetEditList(BudgetEdit budgetedit) {
        return budgetEditMapper.selectBudgetEditList(budgetedit);
    }

    @Override
    public int insertBudgetEdit(BudgetEdit budgetedit) {
        return budgetEditMapper.insertBudgetEdit(budgetedit);
    }

    @Override
    public int updateBudgetEdit(BudgetEdit budgetedit) {
        return budgetEditMapper.updateBudgetEdit(budgetedit);
    }

    @Override
    public int deleteBudgetEditByIds(Long[] budgetIds) {
        return budgetEditMapper.deleteBudgetEditByIds(budgetIds);
    }

    @Override
    public int deleteBudgetEditById(Long budgetId) {
        return budgetEditMapper.deleteBudgetEditById(budgetId);
    }
}
