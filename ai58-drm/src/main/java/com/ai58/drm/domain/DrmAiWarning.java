package com.ai58.drm.domain;

import com.ai58.common.annotation.Excel;
import com.ai58.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class DrmAiWarning extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long warningId;
    @Excel(name = "标题")
    private String warningTitle;
    @Excel(name = "科室")
    private String deptName;
    @Excel(name = "类型")
    private String warningLevel;
    @Excel(name = "状态")
    private String status;

    public Long getWarningId() { return warningId; }
    public void setWarningId(Long warningId) { this.warningId = warningId; }

    public String getWarningTitle() { return warningTitle; }
    public void setWarningTitle(String warningTitle) { this.warningTitle = warningTitle; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getWarningLevel() { return warningLevel; }
    public void setWarningLevel(String warningLevel) { this.warningLevel = warningLevel; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("warningId", getWarningId())
            .append("warningTitle", getWarningTitle())
            .append("deptName", getDeptName())
            .append("warningLevel", getWarningLevel())
            .append("status", getStatus())
            .append("remark", getRemark())
            .append("createTime", getCreateTime())
            .toString();
    }
}
