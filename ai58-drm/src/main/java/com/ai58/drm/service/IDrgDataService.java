package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrgData;

/**
 * DrgData 服务层
 *
 * @author ai58
 */
public interface IDrgDataService
{
    /**
     * 查询DrgData信息
     *
     * @param drgId DrgDataID
     * @return DrgData信息
     */
    public DrgData selectDrgDataById(Long drgId);

    /**
     * 查询DrgData列表
     *
     * @param drgdata DrgData信息
     * @return DrgData集合
     */
    public List<DrgData> selectDrgDataList(DrgData drgdata);

    /**
     * 新增DrgData
     *
     * @param drgdata DrgData信息
     * @return 结果
     */
    public int insertDrgData(DrgData drgdata);

    /**
     * 修改DrgData
     *
     * @param drgdata DrgData信息
     * @return 结果
     */
    public int updateDrgData(DrgData drgdata);

    /**
     * 删除DrgData
     *
     * @param drgId DrgDataID
     * @return 结果
     */
    public int deleteDrgDataById(Long drgId);

    /**
     * 批量删除DrgData
     *
     * @param drgIds 需要删除的DrgDataID
     * @return 结果
     */
    public int deleteDrgDataByIds(Long[] drgIds);
}
