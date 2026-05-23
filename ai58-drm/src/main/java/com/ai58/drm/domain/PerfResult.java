package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 绩效结果 drm_perf_result
 *
 * @author ai58
 */
public class PerfResult extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long resultId;
    private Long planId;
    private String deptName;
    private String doctorName;
    private BigDecimal perfScore;
    private BigDecimal perfAmount;
    private String calcDate;

    public Long getResultId() { return resultId; }
    public void setResultId(Long resultId) { this.resultId = resultId; }

    public Long getPlanId() { return planId; }
    public void setPlanId(Long planId) { this.planId = planId; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getDoctorName() { return doctorName; }
    public void setDoctorName(String doctorName) { this.doctorName = doctorName; }

    public BigDecimal getPerfScore() { return perfScore; }
    public void setPerfScore(BigDecimal perfScore) { this.perfScore = perfScore; }

    public BigDecimal getPerfAmount() { return perfAmount; }
    public void setPerfAmount(BigDecimal perfAmount) { this.perfAmount = perfAmount; }

    public String getCalcDate() { return calcDate; }
    public void setCalcDate(String calcDate) { this.calcDate = calcDate; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("resultId", getResultId())
            .append("planId", getPlanId())
            .append("deptName", getDeptName())
            .toString();
    }
}
