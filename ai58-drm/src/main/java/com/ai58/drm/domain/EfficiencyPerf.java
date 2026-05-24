package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

public class EfficiencyPerf extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long perfId;
    private String deptName;
    private BigDecimal efficiencyScore;
    private BigDecimal workLoad;
    private BigDecimal bedUtilization;
    private BigDecimal equipUtilization;
    private String calcDate;
    private String status;

    public Long getPerfId() { return perfId; }
    public void setPerfId(Long perfId) { this.perfId = perfId; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public BigDecimal getEfficiencyScore() { return efficiencyScore; }
    public void setEfficiencyScore(BigDecimal efficiencyScore) { this.efficiencyScore = efficiencyScore; }

    public BigDecimal getWorkLoad() { return workLoad; }
    public void setWorkLoad(BigDecimal workLoad) { this.workLoad = workLoad; }

    public BigDecimal getBedUtilization() { return bedUtilization; }
    public void setBedUtilization(BigDecimal bedUtilization) { this.bedUtilization = bedUtilization; }

    public BigDecimal getEquipUtilization() { return equipUtilization; }
    public void setEquipUtilization(BigDecimal equipUtilization) { this.equipUtilization = equipUtilization; }

    public String getCalcDate() { return calcDate; }
    public void setCalcDate(String calcDate) { this.calcDate = calcDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
