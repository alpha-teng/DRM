package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.CostDataMapper;
import com.ai58.drm.domain.CostData;
import com.ai58.drm.service.ICostDataService;

/**
 * CostData 服务层实现
 *
 * @author ai58
 */
@Service
public class CostDataServiceImpl implements ICostDataService
{
    @Autowired
    private CostDataMapper costdataMapper;

    /**
     * 查询CostData信息
     *
     * @param costId CostDataID
     * @return CostData信息
     */
    @Override
    public CostData selectCostDataById(Long costId)
    {
        CostData entity = new CostData();
        entity.setCostId(costId);
        return costdataMapper.selectCostData(entity);
    }

    /**
     * 查询CostData列表
     *
     * @param costdata CostData信息
     * @return CostData集合
     */
    @Override
    public List<CostData> selectCostDataList(CostData costdata)
    {
        return costdataMapper.selectCostDataList(costdata);
    }

    /**
     * 新增CostData
     *
     * @param costdata CostData信息
     * @return 结果
     */
    @Override
    public int insertCostData(CostData costdata)
    {
        return costdataMapper.insertCostData(costdata);
    }

    /**
     * 修改CostData
     *
     * @param costdata CostData信息
     * @return 结果
     */
    @Override
    public int updateCostData(CostData costdata)
    {
        return costdataMapper.updateCostData(costdata);
    }

    /**
     * 删除CostData
     *
     * @param costId CostDataID
     * @return 结果
     */
    @Override
    public int deleteCostDataById(Long costId)
    {
        return costdataMapper.deleteCostDataById(costId);
    }

    /**
     * 批量删除CostData
     *
     * @param costIds 需要删除的CostDataID
     * @return 结果
     */
    @Override
    public int deleteCostDataByIds(Long[] costIds)
    {
        return costdataMapper.deleteCostDataByIds(costIds);
    }
}
