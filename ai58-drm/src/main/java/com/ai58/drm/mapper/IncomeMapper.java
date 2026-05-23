package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.Income;

/**
 * 收入管理 数据层
 *
 * @author ai58
 */
public interface IncomeMapper {

    public Income selectIncome(Income income);
    public List<Income> selectIncomeList(Income income);
    public int insertIncome(Income income);
    public int updateIncome(Income income);
    public int deleteIncomeById(Long incomeId);
    public int deleteIncomeByIds(Long[] incomeIds);
}
