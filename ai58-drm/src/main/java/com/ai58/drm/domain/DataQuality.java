package com.ai58.drm.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 数据质量检查 drm_data_quality
 *
 * @author ai58
 */
public class DataQuality extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long qualityId;
    private String checkDate;
    private String sourceName;
    private String tableName;
    private Long totalCnt;
    private Long errorCnt;
    private BigDecimal accuracyRate;

    public Long getQualityId() { return qualityId; }
    public void setQualityId(Long qualityId) { this.qualityId = qualityId; }

    public String getCheckDate() { return checkDate; }
    public void setCheckDate(String checkDate) { this.checkDate = checkDate; }

    public String getSourceName() { return sourceName; }
    public void setSourceName(String sourceName) { this.sourceName = sourceName; }

    public String getTableName() { return tableName; }
    public void setTableName(String tableName) { this.tableName = tableName; }

    public Long getTotalCnt() { return totalCnt; }
    public void setTotalCnt(Long totalCnt) { this.totalCnt = totalCnt; }

    public Long getErrorCnt() { return errorCnt; }
    public void setErrorCnt(Long errorCnt) { this.errorCnt = errorCnt; }

    public BigDecimal getAccuracyRate() { return accuracyRate; }
    public void setAccuracyRate(BigDecimal accuracyRate) { this.accuracyRate = accuracyRate; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("qualityId", getQualityId())
            .append("sourceName", getSourceName())
            .append("accuracyRate", getAccuracyRate())
            .toString();
    }
}
