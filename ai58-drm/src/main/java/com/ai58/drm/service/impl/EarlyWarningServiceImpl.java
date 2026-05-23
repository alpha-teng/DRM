package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.EarlyWarningMapper;
import com.ai58.drm.domain.EarlyWarning;
import com.ai58.drm.service.IEarlyWarningService;

/**
 * EarlyWarning 服务层实现
 *
 * @author ai58
 */
@Service
public class EarlyWarningServiceImpl implements IEarlyWarningService
{
    @Autowired
    private EarlyWarningMapper earlywarningMapper;

    /**
     * 查询EarlyWarning信息
     *
     * @param warningId EarlyWarningID
     * @return EarlyWarning信息
     */
    @Override
    public EarlyWarning selectEarlyWarningById(Long warningId)
    {
        EarlyWarning entity = new EarlyWarning();
        entity.setWarningId(warningId);
        return earlywarningMapper.selectEarlyWarning(entity);
    }

    /**
     * 查询EarlyWarning列表
     *
     * @param earlywarning EarlyWarning信息
     * @return EarlyWarning集合
     */
    @Override
    public List<EarlyWarning> selectEarlyWarningList(EarlyWarning earlywarning)
    {
        return earlywarningMapper.selectEarlyWarningList(earlywarning);
    }

    /**
     * 新增EarlyWarning
     *
     * @param earlywarning EarlyWarning信息
     * @return 结果
     */
    @Override
    public int insertEarlyWarning(EarlyWarning earlywarning)
    {
        return earlywarningMapper.insertEarlyWarning(earlywarning);
    }

    /**
     * 修改EarlyWarning
     *
     * @param earlywarning EarlyWarning信息
     * @return 结果
     */
    @Override
    public int updateEarlyWarning(EarlyWarning earlywarning)
    {
        return earlywarningMapper.updateEarlyWarning(earlywarning);
    }

    /**
     * 删除EarlyWarning
     *
     * @param warningId EarlyWarningID
     * @return 结果
     */
    @Override
    public int deleteEarlyWarningById(Long warningId)
    {
        return earlywarningMapper.deleteEarlyWarningById(warningId);
    }

    /**
     * 批量删除EarlyWarning
     *
     * @param warningIds 需要删除的EarlyWarningID
     * @return 结果
     */
    @Override
    public int deleteEarlyWarningByIds(Long[] warningIds)
    {
        return earlywarningMapper.deleteEarlyWarningByIds(warningIds);
    }
}
