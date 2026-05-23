package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.EarlyWarning;

/**
 * EarlyWarning 服务层
 *
 * @author ai58
 */
public interface IEarlyWarningService
{
    /**
     * 查询EarlyWarning信息
     *
     * @param warningId EarlyWarningID
     * @return EarlyWarning信息
     */
    public EarlyWarning selectEarlyWarningById(Long warningId);

    /**
     * 查询EarlyWarning列表
     *
     * @param earlywarning EarlyWarning信息
     * @return EarlyWarning集合
     */
    public List<EarlyWarning> selectEarlyWarningList(EarlyWarning earlywarning);

    /**
     * 新增EarlyWarning
     *
     * @param earlywarning EarlyWarning信息
     * @return 结果
     */
    public int insertEarlyWarning(EarlyWarning earlywarning);

    /**
     * 修改EarlyWarning
     *
     * @param earlywarning EarlyWarning信息
     * @return 结果
     */
    public int updateEarlyWarning(EarlyWarning earlywarning);

    /**
     * 删除EarlyWarning
     *
     * @param warningId EarlyWarningID
     * @return 结果
     */
    public int deleteEarlyWarningById(Long warningId);

    /**
     * 批量删除EarlyWarning
     *
     * @param warningIds 需要删除的EarlyWarningID
     * @return 结果
     */
    public int deleteEarlyWarningByIds(Long[] warningIds);
}
