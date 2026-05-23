package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.IncomeMapper;
import com.ai58.drm.domain.Income;
import com.ai58.drm.service.IIncomeService;

/**
 * Income 服务层实现
 *
 * @author ai58
 */
@Service
public class IncomeServiceImpl implements IIncomeService
{
    @Autowired
    private IncomeMapper incomeMapper;

    /**
     * 查询Income信息
     *
     * @param incomeId IncomeID
     * @return Income信息
     */
    @Override
    public Income selectIncomeById(Long incomeId)
    {
        Income entity = new Income();
        entity.setIncomeId(incomeId);
        return incomeMapper.selectIncome(entity);
    }

    /**
     * 查询Income列表
     *
     * @param income Income信息
     * @return Income集合
     */
    @Override
    public List<Income> selectIncomeList(Income income)
    {
        return incomeMapper.selectIncomeList(income);
    }

    /**
     * 新增Income
     *
     * @param income Income信息
     * @return 结果
     */
    @Override
    public int insertIncome(Income income)
    {
        return incomeMapper.insertIncome(income);
    }

    /**
     * 修改Income
     *
     * @param income Income信息
     * @return 结果
     */
    @Override
    public int updateIncome(Income income)
    {
        return incomeMapper.updateIncome(income);
    }

    /**
     * 删除Income
     *
     * @param incomeId IncomeID
     * @return 结果
     */
    @Override
    public int deleteIncomeById(Long incomeId)
    {
        return incomeMapper.deleteIncomeById(incomeId);
    }

    /**
     * 批量删除Income
     *
     * @param incomeIds 需要删除的IncomeID
     * @return 结果
     */
    @Override
    public int deleteIncomeByIds(Long[] incomeIds)
    {
        return incomeMapper.deleteIncomeByIds(incomeIds);
    }
}
