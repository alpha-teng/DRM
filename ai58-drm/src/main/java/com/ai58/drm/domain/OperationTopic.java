package com.ai58.drm.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 专题分析 drm_operation_topic
 *
 * @author ai58
 */
public class OperationTopic extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long topicId;
    private String topicName;
    private String topicType;
    private String targetDept;
    private String analysisModel;
    private String dataConfig;
    private String chartConfig;
    private String status;
    private String aiInsights;

    public Long getTopicId() {
        return topicId;
    }

    public void setTopicId(Long topicId) {
        this.topicId = topicId;
    }

    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }

    public String getTopicType() {
        return topicType;
    }

    public void setTopicType(String topicType) {
        this.topicType = topicType;
    }

    public String getTargetDept() {
        return targetDept;
    }

    public void setTargetDept(String targetDept) {
        this.targetDept = targetDept;
    }

    public String getAnalysisModel() {
        return analysisModel;
    }

    public void setAnalysisModel(String analysisModel) {
        this.analysisModel = analysisModel;
    }

    public String getDataConfig() {
        return dataConfig;
    }

    public void setDataConfig(String dataConfig) {
        this.dataConfig = dataConfig;
    }

    public String getChartConfig() {
        return chartConfig;
    }

    public void setChartConfig(String chartConfig) {
        this.chartConfig = chartConfig;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAiInsights() {
        return aiInsights;
    }

    public void setAiInsights(String aiInsights) {
        this.aiInsights = aiInsights;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("topicId", getTopicId())
            .append("topicName", getTopicName())
            .append("topicType", getTopicType())
            .append("targetDept", getTargetDept())
            .append("analysisModel", getAnalysisModel())
            .append("status", getStatus())
            .toString();
    }
}
