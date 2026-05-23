package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.QualityEvent;

/**
 * QualityEvent 服务层
 *
 * @author ai58
 */
public interface IQualityEventService
{
    /**
     * 查询QualityEvent信息
     *
     * @param eventId QualityEventID
     * @return QualityEvent信息
     */
    public QualityEvent selectQualityEventById(Long eventId);

    /**
     * 查询QualityEvent列表
     *
     * @param qualityevent QualityEvent信息
     * @return QualityEvent集合
     */
    public List<QualityEvent> selectQualityEventList(QualityEvent qualityevent);

    /**
     * 新增QualityEvent
     *
     * @param qualityevent QualityEvent信息
     * @return 结果
     */
    public int insertQualityEvent(QualityEvent qualityevent);

    /**
     * 修改QualityEvent
     *
     * @param qualityevent QualityEvent信息
     * @return 结果
     */
    public int updateQualityEvent(QualityEvent qualityevent);

    /**
     * 删除QualityEvent
     *
     * @param eventId QualityEventID
     * @return 结果
     */
    public int deleteQualityEventById(Long eventId);

    /**
     * 批量删除QualityEvent
     *
     * @param eventIds 需要删除的QualityEventID
     * @return 结果
     */
    public int deleteQualityEventByIds(Long[] eventIds);
}
