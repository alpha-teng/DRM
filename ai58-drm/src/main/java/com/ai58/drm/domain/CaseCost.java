package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 病种成本 drm_case_cost
 *
 * @author ai58
 */
public class CaseCost extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long caseId;
    private String caseName;
    private String deptName;
    private String caseCode;
    private BigDecimal totalCost;
    private BigDecimal drugCost;
    private BigDecimal materialCost;
    private BigDecimal serviceCost;
    private Integer avgStayDays;
    private String costDate;

    public Long getCaseId() {
        return caseId;
    }

    public void setCaseId(Long caseId) {
        this.caseId = caseId;
    }

    public String getCaseName() {
        return caseName;
    }

    public void setCaseName(String caseName) {
        this.caseName = caseName;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getCaseCode() {
        return caseCode;
    }

    public void setCaseCode(String caseCode) {
        this.caseCode = caseCode;
    }

    public BigDecimal getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(BigDecimal totalCost) {
        this.totalCost = totalCost;
    }

    public BigDecimal getDrugCost() {
        return drugCost;
    }

    public void setDrugCost(BigDecimal drugCost) {
        this.drugCost = drugCost;
    }

    public BigDecimal getMaterialCost() {
        return materialCost;
    }

    public void setMaterialCost(BigDecimal materialCost) {
        this.materialCost = materialCost;
    }

    public BigDecimal getServiceCost() {
        return serviceCost;
    }

    public void setServiceCost(BigDecimal serviceCost) {
        this.serviceCost = serviceCost;
    }

    public Integer getAvgStayDays() {
        return avgStayDays;
    }

    public void setAvgStayDays(Integer avgStayDays) {
        this.avgStayDays = avgStayDays;
    }

    public String getCostDate() {
        return costDate;
    }

    public void setCostDate(String costDate) {
        this.costDate = costDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("caseId", getCaseId())
            .append("caseName", getCaseName())
            .append("deptName", getDeptName())
            .append("totalCost", getTotalCost())
            .toString();
    }
}
