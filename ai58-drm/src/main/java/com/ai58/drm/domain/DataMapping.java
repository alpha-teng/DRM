package com.ai58.drm.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 数据映射配置 drm_data_mapping
 *
 * @author ai58
 */
public class DataMapping extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long mappingId;
    private String sourceTable;
    private String targetTable;
    private String mappingRules;
    private String status;

    public Long getMappingId() { return mappingId; }
    public void setMappingId(Long mappingId) { this.mappingId = mappingId; }

    public String getSourceTable() { return sourceTable; }
    public void setSourceTable(String sourceTable) { this.sourceTable = sourceTable; }

    public String getTargetTable() { return targetTable; }
    public void setTargetTable(String targetTable) { this.targetTable = targetTable; }

    public String getMappingRules() { return mappingRules; }
    public void setMappingRules(String mappingRules) { this.mappingRules = mappingRules; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("mappingId", getMappingId())
            .append("sourceTable", getSourceTable())
            .append("targetTable", getTargetTable())
            .toString();
    }
}
