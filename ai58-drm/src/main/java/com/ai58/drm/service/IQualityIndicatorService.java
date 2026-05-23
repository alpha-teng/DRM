package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.QualityIndicator;

/**
 * QualityIndicator 服务层
 *
 * @author ai58
 */
public interface IQualityIndicatorService
{
    /**
     * 查询QualityIndicator信息
     *
     * @param indicatorId QualityIndicatorID
     * @return QualityIndicator信息
     */
    public QualityIndicator selectQualityIndicatorById(Long indicatorId);

    /**
     * 查询QualityIndicator列表
     *
     * @param qualityindicator QualityIndicator信息
     * @return QualityIndicator集合
     */
    public List<QualityIndicator> selectQualityIndicatorList(QualityIndicator qualityindicator);

    /**
     * 新增QualityIndicator
     *
     * @param qualityindicator QualityIndicator信息
     * @return 结果
     */
    public int insertQualityIndicator(QualityIndicator qualityindicator);

    /**
     * 修改QualityIndicator
     *
     * @param qualityindicator QualityIndicator信息
     * @return 结果
     */
    public int updateQualityIndicator(QualityIndicator qualityindicator);

    /**
     * 删除QualityIndicator
     *
     * @param indicatorId QualityIndicatorID
     * @return 结果
     */
    public int deleteQualityIndicatorById(Long indicatorId);

    /**
     * 批量删除QualityIndicator
     *
     * @param indicatorIds 需要删除的QualityIndicatorID
     * @return 结果
     */
    public int deleteQualityIndicatorByIds(Long[] indicatorIds);
}
