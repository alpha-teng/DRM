package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * DRG分析 drm_drg_analysis
 *
 * @author ai58
 */
public class DrgAnalysis extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long analysisId;
    private String analysisType;
    private String deptName;
    private String drgCode;
    private BigDecimal indicatorValue;
    private String indicatorName;

    public Long getAnalysisId() { return analysisId; }
    public void setAnalysisId(Long analysisId) { this.analysisId = analysisId; }

    public String getAnalysisType() { return analysisType; }
    public void setAnalysisType(String analysisType) { this.analysisType = analysisType; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getDrgCode() { return drgCode; }
    public void setDrgCode(String drgCode) { this.drgCode = drgCode; }

    public BigDecimal getIndicatorValue() { return indicatorValue; }
    public void setIndicatorValue(BigDecimal indicatorValue) { this.indicatorValue = indicatorValue; }

    public String getIndicatorName() { return indicatorName; }
    public void setIndicatorName(String indicatorName) { this.indicatorName = indicatorName; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("analysisId", getAnalysisId())
            .append("analysisType", getAnalysisType())
            .append("deptName", getDeptName())
            .toString();
    }
}
