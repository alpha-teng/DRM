package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.EarlyWarning;

/**
 * 预警信息 数据层
 *
 * @author ai58
 */
public interface EarlyWarningMapper {

    public EarlyWarning selectEarlyWarning(EarlyWarning warning);
    public List<EarlyWarning> selectEarlyWarningList(EarlyWarning warning);
    public int insertEarlyWarning(EarlyWarning warning);
    public int updateEarlyWarning(EarlyWarning warning);
    public int deleteEarlyWarningById(Long warningId);
    public int deleteEarlyWarningByIds(Long[] warningIds);
}
