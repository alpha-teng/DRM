package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.PrescriptionReview;

/**
 * PrescriptionReview 服务层
 *
 * @author ai58
 */
public interface IPrescriptionReviewService
{
    /**
     * 查询PrescriptionReview信息
     *
     * @param reviewId PrescriptionReviewID
     * @return PrescriptionReview信息
     */
    public PrescriptionReview selectPrescriptionReviewById(Long reviewId);

    /**
     * 查询PrescriptionReview列表
     *
     * @param prescriptionreview PrescriptionReview信息
     * @return PrescriptionReview集合
     */
    public List<PrescriptionReview> selectPrescriptionReviewList(PrescriptionReview prescriptionreview);

    /**
     * 新增PrescriptionReview
     *
     * @param prescriptionreview PrescriptionReview信息
     * @return 结果
     */
    public int insertPrescriptionReview(PrescriptionReview prescriptionreview);

    /**
     * 修改PrescriptionReview
     *
     * @param prescriptionreview PrescriptionReview信息
     * @return 结果
     */
    public int updatePrescriptionReview(PrescriptionReview prescriptionreview);

    /**
     * 删除PrescriptionReview
     *
     * @param reviewId PrescriptionReviewID
     * @return 结果
     */
    public int deletePrescriptionReviewById(Long reviewId);

    /**
     * 批量删除PrescriptionReview
     *
     * @param reviewIds 需要删除的PrescriptionReviewID
     * @return 结果
     */
    public int deletePrescriptionReviewByIds(Long[] reviewIds);
}
