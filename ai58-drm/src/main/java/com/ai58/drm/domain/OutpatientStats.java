package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 门诊运营数据 drm_outpatient_stats
 *
 * @author ai58
 */
public class OutpatientStats extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long statsId;
    private String statDate;
    private String deptName;
    private Integer registerCnt;
    private Integer visitCnt;
    private BigDecimal revenue;
    private BigDecimal avgCost;

    public Long getStatsId() { return statsId; }
    public void setStatsId(Long statsId) { this.statsId = statsId; }

    public String getStatDate() { return statDate; }
    public void setStatDate(String statDate) { this.statDate = statDate; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public Integer getRegisterCnt() { return registerCnt; }
    public void setRegisterCnt(Integer registerCnt) { this.registerCnt = registerCnt; }

    public Integer getVisitCnt() { return visitCnt; }
    public void setVisitCnt(Integer visitCnt) { this.visitCnt = visitCnt; }

    public BigDecimal getRevenue() { return revenue; }
    public void setRevenue(BigDecimal revenue) { this.revenue = revenue; }

    public BigDecimal getAvgCost() { return avgCost; }
    public void setAvgCost(BigDecimal avgCost) { this.avgCost = avgCost; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("statsId", getStatsId())
            .append("statDate", getStatDate())
            .append("deptName", getDeptName())
            .append("registerCnt", getRegisterCnt())
            .append("visitCnt", getVisitCnt())
            .append("revenue", getRevenue())
            .append("avgCost", getAvgCost())
            .toString();
    }
}
