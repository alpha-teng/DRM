package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.CostData;

/**
 * 成本数据 数据层
 *
 * @author ai58
 */
public interface CostDataMapper {

    public CostData selectCostData(CostData costData);
    public List<CostData> selectCostDataList(CostData costData);
    public int insertCostData(CostData costData);
    public int updateCostData(CostData costData);
    public int deleteCostDataById(Long costId);
    public int deleteCostDataByIds(Long[] costIds);
}
