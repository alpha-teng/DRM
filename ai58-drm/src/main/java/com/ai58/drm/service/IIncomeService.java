package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.Income;

/**
 * Income 服务层
 *
 * @author ai58
 */
public interface IIncomeService
{
    /**
     * 查询Income信息
     *
     * @param incomeId IncomeID
     * @return Income信息
     */
    public Income selectIncomeById(Long incomeId);

    /**
     * 查询Income列表
     *
     * @param income Income信息
     * @return Income集合
     */
    public List<Income> selectIncomeList(Income income);

    /**
     * 新增Income
     *
     * @param income Income信息
     * @return 结果
     */
    public int insertIncome(Income income);

    /**
     * 修改Income
     *
     * @param income Income信息
     * @return 结果
     */
    public int updateIncome(Income income);

    /**
     * 删除Income
     *
     * @param incomeId IncomeID
     * @return 结果
     */
    public int deleteIncomeById(Long incomeId);

    /**
     * 批量删除Income
     *
     * @param incomeIds 需要删除的IncomeID
     * @return 结果
     */
    public int deleteIncomeByIds(Long[] incomeIds);
}
