package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.CostData;

/**
 * CostData 服务层
 *
 * @author ai58
 */
public interface ICostDataService
{
    /**
     * 查询CostData信息
     *
     * @param costId CostDataID
     * @return CostData信息
     */
    public CostData selectCostDataById(Long costId);

    /**
     * 查询CostData列表
     *
     * @param costdata CostData信息
     * @return CostData集合
     */
    public List<CostData> selectCostDataList(CostData costdata);

    /**
     * 新增CostData
     *
     * @param costdata CostData信息
     * @return 结果
     */
    public int insertCostData(CostData costdata);

    /**
     * 修改CostData
     *
     * @param costdata CostData信息
     * @return 结果
     */
    public int updateCostData(CostData costdata);

    /**
     * 删除CostData
     *
     * @param costId CostDataID
     * @return 结果
     */
    public int deleteCostDataById(Long costId);

    /**
     * 批量删除CostData
     *
     * @param costIds 需要删除的CostDataID
     * @return 结果
     */
    public int deleteCostDataByIds(Long[] costIds);
}
