package com.ai58.drm.domain;

import com.ai58.common.annotation.Excel;
import com.ai58.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class DrmQualityReport extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long reportId;
    @Excel(name = "名称")
    private String reportName;
    @Excel(name = "科室")
    private String deptName;
    @Excel(name = "数值")
    private String reportValue;
    @Excel(name = "状态")
    private String status;

    public Long getReportId() { return reportId; }
    public void setReportId(Long reportId) { this.reportId = reportId; }

    public String getReportName() { return reportName; }
    public void setReportName(String reportName) { this.reportName = reportName; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getReportValue() { return reportValue; }
    public void setReportValue(String reportValue) { this.reportValue = reportValue; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("reportId", getReportId())
            .append("reportName", getReportName())
            .append("deptName", getDeptName())
            .append("reportValue", getReportValue())
            .append("status", getStatus())
            .append("remark", getRemark())
            .append("createTime", getCreateTime())
            .toString();
    }
}
