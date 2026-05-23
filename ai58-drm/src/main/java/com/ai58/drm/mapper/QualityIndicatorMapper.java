package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.QualityIndicator;

/**
 * 质量指标 数据层
 *
 * @author ai58
 */
public interface QualityIndicatorMapper {

    public QualityIndicator selectQualityIndicator(QualityIndicator indicator);
    public List<QualityIndicator> selectQualityIndicatorList(QualityIndicator indicator);
    public int insertQualityIndicator(QualityIndicator indicator);
    public int updateQualityIndicator(QualityIndicator indicator);
    public int deleteQualityIndicatorById(Long indicatorId);
    public int deleteQualityIndicatorByIds(Long[] indicatorIds);
}
