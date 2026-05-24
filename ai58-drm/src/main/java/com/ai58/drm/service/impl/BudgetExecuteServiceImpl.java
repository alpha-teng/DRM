package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.BudgetExecuteMapper;
import com.ai58.drm.domain.BudgetExecute;
import com.ai58.drm.service.IBudgetExecuteService;

@Service
public class BudgetExecuteServiceImpl implements IBudgetExecuteService {
    @Autowired
    private BudgetExecuteMapper budgetExecuteMapper;

    @Override
    public BudgetExecute selectBudgetExecuteById(Long executeId) {
        return budgetExecuteMapper.selectBudgetExecuteById(executeId);
    }

    @Override
    public List<BudgetExecute> selectBudgetExecuteList(BudgetExecute budgetexecute) {
        return budgetExecuteMapper.selectBudgetExecuteList(budgetexecute);
    }

    @Override
    public int insertBudgetExecute(BudgetExecute budgetexecute) {
        return budgetExecuteMapper.insertBudgetExecute(budgetexecute);
    }

    @Override
    public int updateBudgetExecute(BudgetExecute budgetexecute) {
        return budgetExecuteMapper.updateBudgetExecute(budgetexecute);
    }

    @Override
    public int deleteBudgetExecuteByIds(Long[] executeIds) {
        return budgetExecuteMapper.deleteBudgetExecuteByIds(executeIds);
    }

    @Override
    public int deleteBudgetExecuteById(Long executeId) {
        return budgetExecuteMapper.deleteBudgetExecuteById(executeId);
    }
}
