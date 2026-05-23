package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 质量指标 drm_quality_indicator
 *
 * @author ai58
 */
public class QualityIndicator extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long indicatorId;
    private String indicatorDate;
    private String deptName;
    private String indicatorCode;
    private String indicatorName;
    private BigDecimal indicatorValue;
    private BigDecimal targetValue;

    public Long getIndicatorId() { return indicatorId; }
    public void setIndicatorId(Long indicatorId) { this.indicatorId = indicatorId; }

    public String getIndicatorDate() { return indicatorDate; }
    public void setIndicatorDate(String indicatorDate) { this.indicatorDate = indicatorDate; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getIndicatorCode() { return indicatorCode; }
    public void setIndicatorCode(String indicatorCode) { this.indicatorCode = indicatorCode; }

    public String getIndicatorName() { return indicatorName; }
    public void setIndicatorName(String indicatorName) { this.indicatorName = indicatorName; }

    public BigDecimal getIndicatorValue() { return indicatorValue; }
    public void setIndicatorValue(BigDecimal indicatorValue) { this.indicatorValue = indicatorValue; }

    public BigDecimal getTargetValue() { return targetValue; }
    public void setTargetValue(BigDecimal targetValue) { this.targetValue = targetValue; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("indicatorId", getIndicatorId())
            .append("indicatorName", getIndicatorName())
            .append("deptName", getDeptName())
            .toString();
    }
}
