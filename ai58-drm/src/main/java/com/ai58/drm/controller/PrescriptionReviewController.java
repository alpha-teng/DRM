package com.ai58.drm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ai58.common.annotation.Log;
import com.ai58.common.core.controller.BaseController;
import com.ai58.common.core.domain.AjaxResult;
import com.ai58.common.core.page.TableDataInfo;
import com.ai58.common.enums.BusinessType;
import com.ai58.common.utils.poi.ExcelUtil;
import com.ai58.drm.domain.PrescriptionReview;
import com.ai58.drm.service.IPrescriptionReviewService;

/**
 * 处方点评 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("drm/prescriptionReview")
public class PrescriptionReviewController extends BaseController
{
    @Autowired
    private IPrescriptionReviewService prescriptionreviewService;

    /**
     * 获取处方点评列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/prescriptionReview:list')")
    @GetMapping("/list")
    public TableDataInfo list(PrescriptionReview prescriptionreview)
    {
        startPage();
        List<PrescriptionReview> list = prescriptionreviewService.selectPrescriptionReviewList(prescriptionreview);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/prescriptionReview:export')")
    @Log(title = "处方点评", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PrescriptionReview prescriptionreview)
    {
        List<PrescriptionReview> list = prescriptionreviewService.selectPrescriptionReviewList(prescriptionreview);
        ExcelUtil<PrescriptionReview> util = new ExcelUtil<PrescriptionReview>(PrescriptionReview.class);
        util.exportExcel(response, list, "处方点评数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/prescriptionReview:query')")
    @GetMapping(value = "/{reviewId}")
    public AjaxResult getInfo(@PathVariable Long reviewId)
    {
        return success(prescriptionreviewService.selectPrescriptionReviewById(reviewId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/prescriptionReview:add')")
    @Log(title = "处方点评", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PrescriptionReview prescriptionreview)
    {
        prescriptionreview.setCreateBy(getUsername());
        return toAjax(prescriptionreviewService.insertPrescriptionReview(prescriptionreview));
    }

    // @PreAuthorize("@ss.hasPermi('drm/prescriptionReview:edit')")
    @Log(title = "处方点评", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PrescriptionReview prescriptionreview)
    {
        prescriptionreview.setUpdateBy(getUsername());
        return toAjax(prescriptionreviewService.updatePrescriptionReview(prescriptionreview));
    }

    // @PreAuthorize("@ss.hasPermi('drm/prescriptionReview:remove')")
    @Log(title = "处方点评", businessType = BusinessType.DELETE)
    @DeleteMapping("/{reviewIds}")
    public AjaxResult remove(@PathVariable Long[] reviewIds)
    {
        return toAjax(prescriptionreviewService.deletePrescriptionReviewByIds(reviewIds));
    }
}
