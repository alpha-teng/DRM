package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.Expense;

/**
 * Expense 服务层
 *
 * @author ai58
 */
public interface IExpenseService
{
    /**
     * 查询Expense信息
     *
     * @param expenseId ExpenseID
     * @return Expense信息
     */
    public Expense selectExpenseById(Long expenseId);

    /**
     * 查询Expense列表
     *
     * @param expense Expense信息
     * @return Expense集合
     */
    public List<Expense> selectExpenseList(Expense expense);

    /**
     * 新增Expense
     *
     * @param expense Expense信息
     * @return 结果
     */
    public int insertExpense(Expense expense);

    /**
     * 修改Expense
     *
     * @param expense Expense信息
     * @return 结果
     */
    public int updateExpense(Expense expense);

    /**
     * 删除Expense
     *
     * @param expenseId ExpenseID
     * @return 结果
     */
    public int deleteExpenseById(Long expenseId);

    /**
     * 批量删除Expense
     *
     * @param expenseIds 需要删除的ExpenseID
     * @return 结果
     */
    public int deleteExpenseByIds(Long[] expenseIds);
}
