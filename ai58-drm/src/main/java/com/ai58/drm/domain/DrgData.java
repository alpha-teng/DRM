package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * DRG数据 drm_drg_data
 *
 * @author ai58
 */
public class DrgData extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long drgId;
    private String statDate;
    private String drgCode;
    private String drgName;
    private Integer caseCnt;
    private BigDecimal avgCost;
    private BigDecimal avgDays;
    private BigDecimal cmi;
    private BigDecimal surplusAmount;

    public Long getDrgId() { return drgId; }
    public void setDrgId(Long drgId) { this.drgId = drgId; }

    public String getStatDate() { return statDate; }
    public void setStatDate(String statDate) { this.statDate = statDate; }

    public String getDrgCode() { return drgCode; }
    public void setDrgCode(String drgCode) { this.drgCode = drgCode; }

    public String getDrgName() { return drgName; }
    public void setDrgName(String drgName) { this.drgName = drgName; }

    public Integer getCaseCnt() { return caseCnt; }
    public void setCaseCnt(Integer caseCnt) { this.caseCnt = caseCnt; }

    public BigDecimal getAvgCost() { return avgCost; }
    public void setAvgCost(BigDecimal avgCost) { this.avgCost = avgCost; }

    public BigDecimal getAvgDays() { return avgDays; }
    public void setAvgDays(BigDecimal avgDays) { this.avgDays = avgDays; }

    public BigDecimal getCmi() { return cmi; }
    public void setCmi(BigDecimal cmi) { this.cmi = cmi; }

    public BigDecimal getSurplusAmount() { return surplusAmount; }
    public void setSurplusAmount(BigDecimal surplusAmount) { this.surplusAmount = surplusAmount; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("drgId", getDrgId())
            .append("drgCode", getDrgCode())
            .append("drgName", getDrgName())
            .toString();
    }
}
