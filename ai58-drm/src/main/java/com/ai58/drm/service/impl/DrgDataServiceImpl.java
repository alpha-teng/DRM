package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.DrgDataMapper;
import com.ai58.drm.domain.DrgData;
import com.ai58.drm.service.IDrgDataService;

/**
 * DrgData 服务层实现
 *
 * @author ai58
 */
@Service
public class DrgDataServiceImpl implements IDrgDataService
{
    @Autowired
    private DrgDataMapper drgdataMapper;

    /**
     * 查询DrgData信息
     *
     * @param drgId DrgDataID
     * @return DrgData信息
     */
    @Override
    public DrgData selectDrgDataById(Long drgId)
    {
        DrgData entity = new DrgData();
        entity.setDrgId(drgId);
        return drgdataMapper.selectDrgData(entity);
    }

    /**
     * 查询DrgData列表
     *
     * @param drgdata DrgData信息
     * @return DrgData集合
     */
    @Override
    public List<DrgData> selectDrgDataList(DrgData drgdata)
    {
        return drgdataMapper.selectDrgDataList(drgdata);
    }

    /**
     * 新增DrgData
     *
     * @param drgdata DrgData信息
     * @return 结果
     */
    @Override
    public int insertDrgData(DrgData drgdata)
    {
        return drgdataMapper.insertDrgData(drgdata);
    }

    /**
     * 修改DrgData
     *
     * @param drgdata DrgData信息
     * @return 结果
     */
    @Override
    public int updateDrgData(DrgData drgdata)
    {
        return drgdataMapper.updateDrgData(drgdata);
    }

    /**
     * 删除DrgData
     *
     * @param drgId DrgDataID
     * @return 结果
     */
    @Override
    public int deleteDrgDataById(Long drgId)
    {
        return drgdataMapper.deleteDrgDataById(drgId);
    }

    /**
     * 批量删除DrgData
     *
     * @param drgIds 需要删除的DrgDataID
     * @return 结果
     */
    @Override
    public int deleteDrgDataByIds(Long[] drgIds)
    {
        return drgdataMapper.deleteDrgDataByIds(drgIds);
    }
}
