package com.ai58.drm.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 不良事件 drm_quality_event
 *
 * @author ai58
 */
public class QualityEvent extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long eventId;
    private String eventDate;
    private String deptName;
    private String eventType;
    private String eventLevel;
    private String eventDesc;
    private String handlingStatus;

    public Long getEventId() { return eventId; }
    public void setEventId(Long eventId) { this.eventId = eventId; }

    public String getEventDate() { return eventDate; }
    public void setEventDate(String eventDate) { this.eventDate = eventDate; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getEventType() { return eventType; }
    public void setEventType(String eventType) { this.eventType = eventType; }

    public String getEventLevel() { return eventLevel; }
    public void setEventLevel(String eventLevel) { this.eventLevel = eventLevel; }

    public String getEventDesc() { return eventDesc; }
    public void setEventDesc(String eventDesc) { this.eventDesc = eventDesc; }

    public String getHandlingStatus() { return handlingStatus; }
    public void setHandlingStatus(String handlingStatus) { this.handlingStatus = handlingStatus; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("eventId", getEventId())
            .append("eventType", getEventType())
            .append("eventLevel", getEventLevel())
            .append("handlingStatus", getHandlingStatus())
            .toString();
    }
}
