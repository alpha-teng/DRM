package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 手术运营数据 drm_surgery_stats
 *
 * @author ai58
 */
public class SurgeryStats extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long statsId;
    private String statDate;
    private String deptName;
    private Integer surgeryCnt;
    private Integer emergencyCnt;
    private BigDecimal revenue;

    public Long getStatsId() { return statsId; }
    public void setStatsId(Long statsId) { this.statsId = statsId; }

    public String getStatDate() { return statDate; }
    public void setStatDate(String statDate) { this.statDate = statDate; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public Integer getSurgeryCnt() { return surgeryCnt; }
    public void setSurgeryCnt(Integer surgeryCnt) { this.surgeryCnt = surgeryCnt; }

    public Integer getEmergencyCnt() { return emergencyCnt; }
    public void setEmergencyCnt(Integer emergencyCnt) { this.emergencyCnt = emergencyCnt; }

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
