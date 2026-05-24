package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

public class DrgDoctor extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long doctorId;
    private String doctorName;
    private String deptName;
    private String drgCode;
    private Integer caseCnt;
    private BigDecimal avgCost;
    private BigDecimal cmi;
    private BigDecimal perfScore;
    private String statDate;
    private String status;

    public Long getDoctorId() { return doctorId; }
    public void setDoctorId(Long doctorId) { this.doctorId = doctorId; }

    public String getDoctorName() { return doctorName; }
    public void setDoctorName(String doctorName) { this.doctorName = doctorName; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getDrgCode() { return drgCode; }
    public void setDrgCode(String drgCode) { this.drgCode = drgCode; }

    public Integer getCaseCnt() { return caseCnt; }
    public void setCaseCnt(Integer caseCnt) { this.caseCnt = caseCnt; }

    public BigDecimal getAvgCost() { return avgCost; }
    public void setAvgCost(BigDecimal avgCost) { this.avgCost = avgCost; }

    public BigDecimal getCmi() { return cmi; }
    public void setCmi(BigDecimal cmi) { this.cmi = cmi; }

    public BigDecimal getPerfScore() { return perfScore; }
    public void setPerfScore(BigDecimal perfScore) { this.perfScore = perfScore; }

    public String getStatDate() { return statDate; }
    public void setStatDate(String statDate) { this.statDate = statDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
