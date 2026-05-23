package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 住院运营数据 drm_inpatient_stats
 *
 * @author ai58
 */
public class InpatientStats extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long statsId;
    private String statDate;
    private String deptName;
    private Integer inCnt;
    private Integer outCnt;
    private Integer bedOccupyCnt;
    private BigDecimal bedOccupyRate;
    private BigDecimal avgStayDays;
    private BigDecimal revenue;

    public Long getStatsId() { return statsId; }
    public void setStatsId(Long statsId) { this.statsId = statsId; }

    public String getStatDate() { return statDate; }
    public void setStatDate(String statDate) { this.statDate = statDate; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public Integer getInCnt() { return inCnt; }
    public void setInCnt(Integer inCnt) { this.inCnt = inCnt; }

    public Integer getOutCnt() { return outCnt; }
    public void setOutCnt(Integer outCnt) { this.outCnt = outCnt; }

    public Integer getBedOccupyCnt() { return bedOccupyCnt; }
    public void setBedOccupyCnt(Integer bedOccupyCnt) { this.bedOccupyCnt = bedOccupyCnt; }

    public BigDecimal getBedOccupyRate() { return bedOccupyRate; }
    public void setBedOccupyRate(BigDecimal bedOccupyRate) { this.bedOccupyRate = bedOccupyRate; }

    public BigDecimal getAvgStayDays() { return avgStayDays; }
    public void setAvgStayDays(BigDecimal avgStayDays) { this.avgStayDays = avgStayDays; }

    public BigDecimal getRevenue() { return revenue; }
    public void setRevenue(BigDecimal revenue) { this.revenue = revenue; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("statsId", getStatsId())
            .append("statDate", getStatDate())
            .append("deptName", getDeptName())
            .toString();
    }
}
