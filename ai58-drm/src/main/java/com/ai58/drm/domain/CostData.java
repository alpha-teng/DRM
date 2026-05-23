package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 成本数据 drm_cost_data
 *
 * @author ai58
 */
public class CostData extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long costId;
    private String costDate;
    private String deptName;
    private String costType;
    private BigDecimal amount;

    public Long getCostId() { return costId; }
    public void setCostId(Long costId) { this.costId = costId; }

    public String getCostDate() { return costDate; }
    public void setCostDate(String costDate) { this.costDate = costDate; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getCostType() { return costType; }
    public void setCostType(String costType) { this.costType = costType; }

    public BigDecimal getAmount() { return amount; }
    public void setAmount(BigDecimal amount) { this.amount = amount; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("costId", getCostId())
            .append("costDate", getCostDate())
            .append("deptName", getDeptName())
            .append("costType", getCostType())
            .append("amount", getAmount())
            .toString();
    }
}
