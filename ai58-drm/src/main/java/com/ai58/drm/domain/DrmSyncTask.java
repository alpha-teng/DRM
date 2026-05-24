package com.ai58.drm.domain;

import com.ai58.common.annotation.Excel;
import com.ai58.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class DrmSyncTask extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long taskId;
    @Excel(name = "名称")
    private String taskName;
    @Excel(name = "科室")
    private String deptName;
    @Excel(name = "数值")
    private String taskValue;
    @Excel(name = "状态")
    private String status;

    public Long getTaskId() { return taskId; }
    public void setTaskId(Long taskId) { this.taskId = taskId; }

    public String getTaskName() { return taskName; }
    public void setTaskName(String taskName) { this.taskName = taskName; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getTaskValue() { return taskValue; }
    public void setTaskValue(String taskValue) { this.taskValue = taskValue; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("taskId", getTaskId())
            .append("taskName", getTaskName())
            .append("deptName", getDeptName())
            .append("taskValue", getTaskValue())
            .append("status", getStatus())
            .append("remark", getRemark())
            .append("createTime", getCreateTime())
            .toString();
    }
}
