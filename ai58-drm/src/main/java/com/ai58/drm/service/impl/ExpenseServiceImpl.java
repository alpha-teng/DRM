package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.ExpenseMapper;
import com.ai58.drm.domain.Expense;
import com.ai58.drm.service.IExpenseService;

/**
 * Expense 服务层实现
 *
 * @author ai58
 */
@Service
public class ExpenseServiceImpl implements IExpenseService
{
    @Autowired
    private ExpenseMapper expenseMapper;

    /**
     * 查询Expense信息
     *
     * @param expenseId ExpenseID
     * @return Expense信息
     */
    @Override
    public Expense selectExpenseById(Long expenseId)
    {
        Expense entity = new Expense();
        entity.setExpenseId(expenseId);
        return expenseMapper.selectExpense(entity);
    }

    /**
     * 查询Expense列表
     *
     * @param expense Expense信息
     * @return Expense集合
     */
    @Override
    public List<Expense> selectExpenseList(Expense expense)
    {
        return expenseMapper.selectExpenseList(expense);
    }

    /**
     * 新增Expense
     *
     * @param expense Expense信息
     * @return 结果
     */
    @Override
    public int insertExpense(Expense expense)
    {
        return expenseMapper.insertExpense(expense);
    }

    /**
     * 修改Expense
     *
     * @param expense Expense信息
     * @return 结果
     */
    @Override
    public int updateExpense(Expense expense)
    {
        return expenseMapper.updateExpense(expense);
    }

    /**
     * 删除Expense
     *
     * @param expenseId ExpenseID
     * @return 结果
     */
    @Override
    public int deleteExpenseById(Long expenseId)
    {
        return expenseMapper.deleteExpenseById(expenseId);
    }

    /**
     * 批量删除Expense
     *
     * @param expenseIds 需要删除的ExpenseID
     * @return 结果
     */
    @Override
    public int deleteExpenseByIds(Long[] expenseIds)
    {
        return expenseMapper.deleteExpenseByIds(expenseIds);
    }
}
