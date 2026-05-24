package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

public class BudgetEdit extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long budgetId;
    private String budgetYear;
    private String budgetType;
    private String deptName;
    private BigDecimal budgetAmount;
    private String status;

    public Long getBudgetId() { return budgetId; }
    public void setBudgetId(Long budgetId) { this.budgetId = budgetId; }

    public String getBudgetYear() { return budgetYear; }
    public void setBudgetYear(String budgetYear) { this.budgetYear = budgetYear; }

    public String getBudgetType() { return budgetType; }
    public void setBudgetType(String budgetType) { this.budgetType = budgetType; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public BigDecimal getBudgetAmount() { return budgetAmount; }
    public void setBudgetAmount(BigDecimal budgetAmount) { this.budgetAmount = budgetAmount; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
