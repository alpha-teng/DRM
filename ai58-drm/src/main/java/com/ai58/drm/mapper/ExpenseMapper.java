package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.Expense;

/**
 * 支出管理 数据层
 *
 * @author ai58
 */
public interface ExpenseMapper {

    public Expense selectExpense(Expense expense);
    public List<Expense> selectExpenseList(Expense expense);
    public int insertExpense(Expense expense);
    public int updateExpense(Expense expense);
    public int deleteExpenseById(Long expenseId);
    public int deleteExpenseByIds(Long[] expenseIds);
}
