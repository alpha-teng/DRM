package com.ai58.drm.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ai58.common.core.domain.BaseEntity;

/**
 * 处方点评 drm_prescription_review
 *
 * @author ai58
 */
public class PrescriptionReview extends BaseEntity {
    private static final long serialVersionUID = 1L;

    private Long reviewId;
    private String reviewDate;
    private String deptName;
    private String doctorName;
    private Integer prescriptionCnt;
    private Integer qualifiedCnt;
    private String unqualifiedReason;

    public Long getReviewId() { return reviewId; }
    public void setReviewId(Long reviewId) { this.reviewId = reviewId; }

    public String getReviewDate() { return reviewDate; }
    public void setReviewDate(String reviewDate) { this.reviewDate = reviewDate; }

    public String getDeptName() { return deptName; }
    public void setDeptName(String deptName) { this.deptName = deptName; }

    public String getDoctorName() { return doctorName; }
    public void setDoctorName(String doctorName) { this.doctorName = doctorName; }

    public Integer getPrescriptionCnt() { return prescriptionCnt; }
    public void setPrescriptionCnt(Integer prescriptionCnt) { this.prescriptionCnt = prescriptionCnt; }

    public Integer getQualifiedCnt() { return qualifiedCnt; }
    public void setQualifiedCnt(Integer qualifiedCnt) { this.qualifiedCnt = qualifiedCnt; }

    public String getUnqualifiedReason() { return unqualifiedReason; }
    public void setUnqualifiedReason(String unqualifiedReason) { this.unqualifiedReason = unqualifiedReason; }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("reviewId", getReviewId())
            .append("doctorName", getDoctorName())
            .append("deptName", getDeptName())
            .toString();
    }
}
