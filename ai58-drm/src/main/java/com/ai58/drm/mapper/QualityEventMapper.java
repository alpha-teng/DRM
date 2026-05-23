package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.QualityEvent;

/**
 * 不良事件 数据层
 *
 * @author ai58
 */
public interface QualityEventMapper {

    public QualityEvent selectQualityEvent(QualityEvent event);
    public List<QualityEvent> selectQualityEventList(QualityEvent event);
    public int insertQualityEvent(QualityEvent event);
    public int updateQualityEvent(QualityEvent event);
    public int deleteQualityEventById(Long eventId);
    public int deleteQualityEventByIds(Long[] eventIds);
}
