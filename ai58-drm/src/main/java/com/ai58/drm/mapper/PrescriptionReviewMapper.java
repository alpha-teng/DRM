package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.PrescriptionReview;

/**
 * 处方点评 数据层
 *
 * @author ai58
 */
public interface PrescriptionReviewMapper {

    public PrescriptionReview selectPrescriptionReview(PrescriptionReview review);
    public List<PrescriptionReview> selectPrescriptionReviewList(PrescriptionReview review);
    public int insertPrescriptionReview(PrescriptionReview review);
    public int updatePrescriptionReview(PrescriptionReview review);
    public int deletePrescriptionReviewById(Long reviewId);
    public int deletePrescriptionReviewByIds(Long[] reviewIds);
}
