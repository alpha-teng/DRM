package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

public class BudgetExecute extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long executeId;
    private Long budgetId;
    private String executeYear;
    private String executeMonth;
    private String deptName;
    private BigDecimal budgetAmount;
    private BigDecimal actualAmount;
    private BigDecimal executeRate;
    private String status;

    public Long getExecuteId() { return executeId; }
    public void setExecuteId(Long executeId) { this.executeId = executeId; }

    public Long getBudgetId() { return budgetId; }
    public void setBudgetId(Long budgetId) { this.budgetId = budgetId; }

    public String getExecuteYear() { return executeYear; }
    public void setExecuteYear(String executeYear) { this.executeYear = executeYear; }

    public String getExecuteMonth() { return executeMonth; }
    public void setExecuteMonth(String executeMonth) { this.executeMonth = executeMonth; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public BigDecimal getBudgetAmount() { return budgetAmount; }
    public void setBudgetAmount(BigDecimal budgetAmount) { this.budgetAmount = budgetAmount; }

    public BigDecimal getActualAmount() { return actualAmount; }
    public void setActualAmount(BigDecimal actualAmount) { this.actualAmount = actualAmount; }

    public BigDecimal getExecuteRate() { return executeRate; }
    public void setExecuteRate(BigDecimal executeRate) { this.executeRate = executeRate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
