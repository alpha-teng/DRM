package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.QualityIndicatorMapper;
import com.ai58.drm.domain.QualityIndicator;
import com.ai58.drm.service.IQualityIndicatorService;

/**
 * QualityIndicator 服务层实现
 *
 * @author ai58
 */
@Service
public class QualityIndicatorServiceImpl implements IQualityIndicatorService
{
    @Autowired
    private QualityIndicatorMapper qualityindicatorMapper;

    /**
     * 查询QualityIndicator信息
     *
     * @param indicatorId QualityIndicatorID
     * @return QualityIndicator信息
     */
    @Override
    public QualityIndicator selectQualityIndicatorById(Long indicatorId)
    {
        QualityIndicator entity = new QualityIndicator();
        entity.setIndicatorId(indicatorId);
        return qualityindicatorMapper.selectQualityIndicator(entity);
    }

    /**
     * 查询QualityIndicator列表
     *
     * @param qualityindicator QualityIndicator信息
     * @return QualityIndicator集合
     */
    @Override
    public List<QualityIndicator> selectQualityIndicatorList(QualityIndicator qualityindicator)
    {
        return qualityindicatorMapper.selectQualityIndicatorList(qualityindicator);
    }

    /**
     * 新增QualityIndicator
     *
     * @param qualityindicator QualityIndicator信息
     * @return 结果
     */
    @Override
    public int insertQualityIndicator(QualityIndicator qualityindicator)
    {
        return qualityindicatorMapper.insertQualityIndicator(qualityindicator);
    }

    /**
     * 修改QualityIndicator
     *
     * @param qualityindicator QualityIndicator信息
     * @return 结果
     */
    @Override
    public int updateQualityIndicator(QualityIndicator qualityindicator)
    {
        return qualityindicatorMapper.updateQualityIndicator(qualityindicator);
    }

    /**
     * 删除QualityIndicator
     *
     * @param indicatorId QualityIndicatorID
     * @return 结果
     */
    @Override
    public int deleteQualityIndicatorById(Long indicatorId)
    {
        return qualityindicatorMapper.deleteQualityIndicatorById(indicatorId);
    }

    /**
     * 批量删除QualityIndicator
     *
     * @param indicatorIds 需要删除的QualityIndicatorID
     * @return 结果
     */
    @Override
    public int deleteQualityIndicatorByIds(Long[] indicatorIds)
    {
        return qualityindicatorMapper.deleteQualityIndicatorByIds(indicatorIds);
    }
}
