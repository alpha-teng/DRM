package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrgData;

/**
 * DRG数据 数据层
 *
 * @author ai58
 */
public interface DrgDataMapper {

    public DrgData selectDrgData(DrgData drgData);
    public List<DrgData> selectDrgDataList(DrgData drgData);
    public int insertDrgData(DrgData drgData);
    public int updateDrgData(DrgData drgData);
    public int deleteDrgDataById(Long drgId);
    public int deleteDrgDataByIds(Long[] drgIds);
}
