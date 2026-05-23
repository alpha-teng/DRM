package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.QualityEventMapper;
import com.ai58.drm.domain.QualityEvent;
import com.ai58.drm.service.IQualityEventService;

/**
 * QualityEvent 服务层实现
 *
 * @author ai58
 */
@Service
public class QualityEventServiceImpl implements IQualityEventService
{
    @Autowired
    private QualityEventMapper qualityeventMapper;

    /**
     * 查询QualityEvent信息
     *
     * @param eventId QualityEventID
     * @return QualityEvent信息
     */
    @Override
    public QualityEvent selectQualityEventById(Long eventId)
    {
        QualityEvent entity = new QualityEvent();
        entity.setEventId(eventId);
        return qualityeventMapper.selectQualityEvent(entity);
    }

    /**
     * 查询QualityEvent列表
     *
     * @param qualityevent QualityEvent信息
     * @return QualityEvent集合
     */
    @Override
    public List<QualityEvent> selectQualityEventList(QualityEvent qualityevent)
    {
        return qualityeventMapper.selectQualityEventList(qualityevent);
    }

    /**
     * 新增QualityEvent
     *
     * @param qualityevent QualityEvent信息
     * @return 结果
     */
    @Override
    public int insertQualityEvent(QualityEvent qualityevent)
    {
        return qualityeventMapper.insertQualityEvent(qualityevent);
    }

    /**
     * 修改QualityEvent
     *
     * @param qualityevent QualityEvent信息
     * @return 结果
     */
    @Override
    public int updateQualityEvent(QualityEvent qualityevent)
    {
        return qualityeventMapper.updateQualityEvent(qualityevent);
    }

    /**
     * 删除QualityEvent
     *
     * @param eventId QualityEventID
     * @return 结果
     */
    @Override
    public int deleteQualityEventById(Long eventId)
    {
        return qualityeventMapper.deleteQualityEventById(eventId);
    }

    /**
     * 批量删除QualityEvent
     *
     * @param eventIds 需要删除的QualityEventID
     * @return 结果
     */
    @Override
    public int deleteQualityEventByIds(Long[] eventIds)
    {
        return qualityeventMapper.deleteQualityEventByIds(eventIds);
    }
}
