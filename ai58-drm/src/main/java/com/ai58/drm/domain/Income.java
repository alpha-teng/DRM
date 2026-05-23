package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 收入管理 drm_income
 *
 * @author ai58
 */
public class Income extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long incomeId;
    private String incomeDate;
    private String deptName;
    private String incomeType;
    private BigDecimal amount;

    public Long getIncomeId() { return incomeId; }
    public void setIncomeId(Long incomeId) { this.incomeId = incomeId; }

    public String getIncomeDate() { return incomeDate; }
    public void setIncomeDate(String incomeDate) { this.incomeDate = incomeDate; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getIncomeType() { return incomeType; }
    public void setIncomeType(String incomeType) { this.incomeType = incomeType; }

    public BigDecimal getAmount() { return amount; }
    public void setAmount(BigDecimal amount) { this.amount = amount; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("incomeId", getIncomeId())
            .append("incomeDate", getIncomeDate())
            .append("deptName", getDeptName())
            .append("incomeType", getIncomeType())
            .append("amount", getAmount())
            .toString();
    }
}
