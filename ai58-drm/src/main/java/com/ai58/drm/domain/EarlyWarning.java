package com.ai58.drm.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 预警信息 drm_early_warning
 *
 * @author ai58
 */
public class EarlyWarning extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long warningId;
    private String warnDate;
    private String warnType;
    private String warnLevel;
    private String warnContent;
    private String deptName;
    private String handleStatus;
    private String handleResult;
    private String aiSuggestion;

    public Long getWarningId() { return warningId; }
    public void setWarningId(Long warningId) { this.warningId = warningId; }

    public String getWarnDate() { return warnDate; }
    public void setWarnDate(String warnDate) { this.warnDate = warnDate; }

    public String getWarnType() { return warnType; }
    public void setWarnType(String warnType) { this.warnType = warnType; }

    public String getWarnLevel() { return warnLevel; }
    public void setWarnLevel(String warnLevel) { this.warnLevel = warnLevel; }

    public String getWarnContent() { return warnContent; }
    public void setWarnContent(String warnContent) { this.warnContent = warnContent; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getHandleStatus() { return handleStatus; }
    public void setHandleStatus(String handleStatus) { this.handleStatus = handleStatus; }

    public String getHandleResult() { return handleResult; }
    public void setHandleResult(String handleResult) { this.handleResult = handleResult; }

    public String getAiSuggestion() { return aiSuggestion; }
    public void setAiSuggestion(String aiSuggestion) { this.aiSuggestion = aiSuggestion; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("warningId", getWarningId())
            .append("warnType", getWarnType())
            .append("warnLevel", getWarnLevel())
            .append("handleStatus", getHandleStatus())
            .toString();
    }
}
