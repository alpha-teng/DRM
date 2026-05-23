package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 支出管理 drm_expense
 *
 * @author ai58
 */
public class Expense extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long expenseId;
    private String expenseDate;
    private String deptName;
    private String expenseType;
    private BigDecimal amount;

    public Long getExpenseId() { return expenseId; }
    public void setExpenseId(Long expenseId) { this.expenseId = expenseId; }

    public String getExpenseDate() { return expenseDate; }
    public void setExpenseDate(String expenseDate) { this.expenseDate = expenseDate; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getExpenseType() { return expenseType; }
    public void setExpenseType(String expenseType) { this.expenseType = expenseType; }

    public BigDecimal getAmount() { return amount; }
    public void setAmount(BigDecimal amount) { this.amount = amount; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("expenseId", getExpenseId())
            .append("expenseDate", getExpenseDate())
            .append("deptName", getDeptName())
            .append("expenseType", getExpenseType())
            .append("amount", getAmount())
            .toString();
    }
}
