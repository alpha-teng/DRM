package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

public class QualityPerf extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long perfId;
    private String deptName;
    private BigDecimal qualityScore;
    private BigDecimal qualifiedRate;
    private BigDecimal excellentRate;
    private Integer incidentCnt;
    private String calcDate;
    private String status;

    public Long getPerfId() { return perfId; }
    public void setPerfId(Long perfId) { this.perfId = perfId; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public BigDecimal getQualityScore() { return qualityScore; }
    public void setQualityScore(BigDecimal qualityScore) { this.qualityScore = qualityScore; }

    public BigDecimal getQualifiedRate() { return qualifiedRate; }
    public void setQualifiedRate(BigDecimal qualifiedRate) { this.qualifiedRate = qualifiedRate; }

    public BigDecimal getExcellentRate() { return excellentRate; }
    public void setExcellentRate(BigDecimal excellentRate) { this.excellentRate = excellentRate; }

    public Integer getIncidentCnt() { return incidentCnt; }
    public void setIncidentCnt(Integer incidentCnt) { this.incidentCnt = incidentCnt; }

    public String getCalcDate() { return calcDate; }
    public void setCalcDate(String calcDate) { this.calcDate = calcDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
