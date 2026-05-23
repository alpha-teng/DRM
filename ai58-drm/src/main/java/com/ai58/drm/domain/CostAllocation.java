package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 成本分摊结果 drm_cost_allocation
 *
 * @author ai58
 */
public class CostAllocation extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long allocationId;
    private String period;
    private Integer level;
    private String deptName;
    private BigDecimal directCost;
    private BigDecimal indirectCost;
    private BigDecimal totalCost;

    public Long getAllocationId() { return allocationId; }
    public void setAllocationId(Long allocationId) { this.allocationId = allocationId; }

    public String getPeriod() { return period; }
    public void setPeriod(String period) { this.period = period; }

    public Integer getLevel() { return level; }
    public void setLevel(Integer level) { this.level = level; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public BigDecimal getDirectCost() { return directCost; }
    public void setDirectCost(BigDecimal directCost) { this.directCost = directCost; }

    public BigDecimal getIndirectCost() { return indirectCost; }
    public void setIndirectCost(BigDecimal indirectCost) { this.indirectCost = indirectCost; }

    public BigDecimal getTotalCost() { return totalCost; }
    public void setTotalCost(BigDecimal totalCost) { this.totalCost = totalCost; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("allocationId", getAllocationId())
            .append("period", getPeriod())
            .append("deptName", getDeptName())
            .toString();
    }
}
