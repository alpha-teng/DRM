package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

public class Rbrvs extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long rbrvsId;
    private String itemName;
    private String itemCode;
    private String deptName;
    private BigDecimal basePoint;
    private BigDecimal difficultyCoeff;
    private BigDecimal perfAmount;
    private String effDate;
    private String status;

    public Long getRbrvsId() { return rbrvsId; }
    public void setRbrvsId(Long rbrvsId) { this.rbrvsId = rbrvsId; }

    public String getItemName() { return itemName; }
    public void setItemName(String itemName) { this.itemName = itemName; }

    public String getItemCode() { return itemCode; }
    public void setItemCode(String itemCode) { this.itemCode = itemCode; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public BigDecimal getBasePoint() { return basePoint; }
    public void setBasePoint(BigDecimal basePoint) { this.basePoint = basePoint; }

    public BigDecimal getDifficultyCoeff() { return difficultyCoeff; }
    public void setDifficultyCoeff(BigDecimal difficultyCoeff) { this.difficultyCoeff = difficultyCoeff; }

    public BigDecimal getPerfAmount() { return perfAmount; }
    public void setPerfAmount(BigDecimal perfAmount) { this.perfAmount = perfAmount; }

    public String getEffDate() { return effDate; }
    public void setEffDate(String effDate) { this.effDate = effDate; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
