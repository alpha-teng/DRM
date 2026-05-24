package com.ai58.drm.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

public class DrgReport extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long reportId;
    private String reportTitle;
    private String reportPeriod;
    private String targetDept;
    private String drgAnalysis;
    private String content;
    private String status;

    public Long getReportId() { return reportId; }
    public void setReportId(Long reportId) { this.reportId = reportId; }

    public String getReportTitle() { return reportTitle; }
    public void setReportTitle(String reportTitle) { this.reportTitle = reportTitle; }

    public String getReportPeriod() { return reportPeriod; }
    public void setReportPeriod(String reportPeriod) { this.reportPeriod = reportPeriod; }

    public String getTargetDept() { return targetDept; }
    public void setTargetDept(String targetDept) { this.targetDept = targetDept; }

    public String getDrgAnalysis() { return drgAnalysis; }
    public void setDrgAnalysis(String drgAnalysis) { this.drgAnalysis = drgAnalysis; }

    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
