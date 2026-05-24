package com.ai58.drm.domain;

import com.ai58.common.annotation.Excel;
import com.ai58.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import java.math.BigDecimal;

public class DrmRollingBudget extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long budgetId;
    @Excel(name = "预算名称")
    private String budgetName;
    @Excel(name = "科室")
    private String deptName;
    @Excel(name = "预算金额")
    private BigDecimal budgetAmount;
    @Excel(name = "状态")
    private String status;

    public Long getBudgetId() { return budgetId; }
    public void setBudgetId(Long budgetId) { this.budgetId = budgetId; }

    public String getBudgetName() { return budgetName; }
    public void setBudgetName(String budgetName) { this.budgetName = budgetName; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public BigDecimal getBudgetAmount() { return budgetAmount; }
    public void setBudgetAmount(BigDecimal budgetAmount) { this.budgetAmount = budgetAmount; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("budgetId", getBudgetId())
            .append("budgetName", getBudgetName())
            .append("deptName", getDeptName())
            .append("budgetAmount", getBudgetAmount())
            .append("status", getStatus())
            .append("remark", getRemark())
            .append("createTime", getCreateTime())
            .toString();
    }
}
