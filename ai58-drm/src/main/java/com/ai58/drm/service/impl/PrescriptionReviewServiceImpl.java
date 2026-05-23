package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.PrescriptionReviewMapper;
import com.ai58.drm.domain.PrescriptionReview;
import com.ai58.drm.service.IPrescriptionReviewService;

/**
 * PrescriptionReview 服务层实现
 *
 * @author ai58
 */
@Service
public class PrescriptionReviewServiceImpl implements IPrescriptionReviewService
{
    @Autowired
    private PrescriptionReviewMapper prescriptionreviewMapper;

    /**
     * 查询PrescriptionReview信息
     *
     * @param reviewId PrescriptionReviewID
     * @return PrescriptionReview信息
     */
    @Override
    public PrescriptionReview selectPrescriptionReviewById(Long reviewId)
    {
        PrescriptionReview entity = new PrescriptionReview();
        entity.setReviewId(reviewId);
        return prescriptionreviewMapper.selectPrescriptionReview(entity);
    }

    /**
     * 查询PrescriptionReview列表
     *
     * @param prescriptionreview PrescriptionReview信息
     * @return PrescriptionReview集合
     */
    @Override
    public List<PrescriptionReview> selectPrescriptionReviewList(PrescriptionReview prescriptionreview)
    {
        return prescriptionreviewMapper.selectPrescriptionReviewList(prescriptionreview);
    }

    /**
     * 新增PrescriptionReview
     *
     * @param prescriptionreview PrescriptionReview信息
     * @return 结果
     */
    @Override
    public int insertPrescriptionReview(PrescriptionReview prescriptionreview)
    {
        return prescriptionreviewMapper.insertPrescriptionReview(prescriptionreview);
    }

    /**
     * 修改PrescriptionReview
     *
     * @param prescriptionreview PrescriptionReview信息
     * @return 结果
     */
    @Override
    public int updatePrescriptionReview(PrescriptionReview prescriptionreview)
    {
        return prescriptionreviewMapper.updatePrescriptionReview(prescriptionreview);
    }

    /**
     * 删除PrescriptionReview
     *
     * @param reviewId PrescriptionReviewID
     * @return 结果
     */
    @Override
    public int deletePrescriptionReviewById(Long reviewId)
    {
        return prescriptionreviewMapper.deletePrescriptionReviewById(reviewId);
    }

    /**
     * 批量删除PrescriptionReview
     *
     * @param reviewIds 需要删除的PrescriptionReviewID
     * @return 结果
     */
    @Override
    public int deletePrescriptionReviewByIds(Long[] reviewIds)
    {
        return prescriptionreviewMapper.deletePrescriptionReviewByIds(reviewIds);
    }
}
