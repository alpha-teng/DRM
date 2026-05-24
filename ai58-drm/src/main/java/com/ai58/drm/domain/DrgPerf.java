package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

public class DrgPerf extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long perfId;
    private String deptName;
    private String drgCode;
    private String drgName;
    private Integer caseCnt;
    private BigDecimal perfScore;
    private BigDecimal perfAmount;
    private String calcDate;
    private String status;

    public Long getPerfId() { return perfId; }
    public void setPerfId(Long perfId) { this.perfId = perfId; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getDrgCode() { return drgCode; }
    public void setDrgCode(String drgCode) { this.drgCode = drgCode; }

    public String getDrgName() { return drgName; }
    public void setDrgName(String drgName) { this.drgName = drgName; }

    public Integer getCaseCnt() { return caseCnt; }
    public void setCaseCnt(Integer caseCnt) { this.caseCnt = caseCnt; }

    public BigDecimal getPerfScore() { return perfScore; }
    public void setPerfScore(BigDecimal perfScore) { this.perfScore = perfScore; }

    public BigDecimal getPerfAmount() { return perfAmount; }
    public void setPerfAmount(BigDecimal perfAmount) { this.perfAmount = perfAmount; }

    public String getCalcDate() { return calcDate; }
    public void setCalcDate(String calcDate) { this.calcDate = calcDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
