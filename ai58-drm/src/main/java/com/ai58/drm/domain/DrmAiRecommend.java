package com.ai58.drm.domain;

import com.ai58.common.annotation.Excel;
import com.ai58.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class DrmAiRecommend extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long recommendId;
    @Excel(name = "标题")
    private String recommendTitle;
    @Excel(name = "科室")
    private String deptName;
    @Excel(name = "类型")
    private String recommendType;
    @Excel(name = "状态")
    private String status;

    public Long getRecommendId() { return recommendId; }
    public void setRecommendId(Long recommendId) { this.recommendId = recommendId; }

    public String getRecommendTitle() { return recommendTitle; }
    public void setRecommendTitle(String recommendTitle) { this.recommendTitle = recommendTitle; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getRecommendType() { return recommendType; }
    public void setRecommendType(String recommendType) { this.recommendType = recommendType; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("recommendId", getRecommendId())
            .append("recommendTitle", getRecommendTitle())
            .append("deptName", getDeptName())
            .append("recommendType", getRecommendType())
            .append("status", getStatus())
            .append("remark", getRemark())
            .append("createTime", getCreateTime())
            .toString();
    }
}
