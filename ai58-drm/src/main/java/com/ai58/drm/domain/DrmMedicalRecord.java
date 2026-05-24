package com.ai58.drm.domain;

import com.ai58.common.annotation.Excel;
import com.ai58.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class DrmMedicalRecord extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long recordId;
    @Excel(name = "名称")
    private String recordName;
    @Excel(name = "科室")
    private String deptName;
    @Excel(name = "数值")
    private String recordValue;
    @Excel(name = "状态")
    private String status;

    public Long getRecordId() { return recordId; }
    public void setRecordId(Long recordId) { this.recordId = recordId; }

    public String getRecordName() { return recordName; }
    public void setRecordName(String recordName) { this.recordName = recordName; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getRecordValue() { return recordValue; }
    public void setRecordValue(String recordValue) { this.recordValue = recordValue; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("recordId", getRecordId())
            .append("recordName", getRecordName())
            .append("deptName", getDeptName())
            .append("recordValue", getRecordValue())
            .append("status", getStatus())
            .append("remark", getRemark())
            .append("createTime", getCreateTime())
            .toString();
    }
}
