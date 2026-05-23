package com.ai58.drm.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 绩效方案 drm_perf_plan
 *
 * @author ai58
 */
public class PerfPlan extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long planId;
    private String planName;
    private String planType;
    private String effectiveDate;
    private String status;
    private String formulaConfig;

    public Long getPlanId() { return planId; }
    public void setPlanId(Long planId) { this.planId = planId; }

    public String getPlanName() { return planName; }
    public void setPlanName(String planName) { this.planName = planName; }

    public String getPlanType() { return planType; }
    public void setPlanType(String planType) { this.planType = planType; }

    public String getEffectiveDate() { return effectiveDate; }
    public void setEffectiveDate(String effectiveDate) { this.effectiveDate = effectiveDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public String getFormulaConfig() { return formulaConfig; }
    public void setFormulaConfig(String formulaConfig) { this.formulaConfig = formulaConfig; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("planId", getPlanId())
            .append("planName", getPlanName())
            .append("planType", getPlanType())
            .append("status", getStatus())
            .toString();
    }
}
