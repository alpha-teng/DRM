package com.ai58.drm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ai58.common.annotation.Log;
import com.ai58.common.core.controller.BaseController;
import com.ai58.common.core.domain.AjaxResult;
import com.ai58.common.enums.BusinessType;
import com.ai58.drm.domain.DrmAiRecommend;
import com.ai58.drm.service.IAiRecommendService;
import com.ai58.common.utils.poi.ExcelUtil;
import com.ai58.common.core.page.TableDataInfo;

@RestController
@RequestMapping("/drm/aiRecommend")
public class AiRecommendController extends BaseController {
    @Autowired
    private IAiRecommendService service;

    @GetMapping("/list")
    public TableDataInfo list(DrmAiRecommend entity) {
        startPage();
        List<DrmAiRecommend> list = service.selectAiRecommendList(entity);
        return getDataTable(list);
    }

    @Log(title = "AI智能推荐", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrmAiRecommend entity) {
        List<DrmAiRecommend> list = service.selectAiRecommendList(entity);
        ExcelUtil<DrmAiRecommend> util = new ExcelUtil<DrmAiRecommend>(DrmAiRecommend.class);
        util.exportExcel(response, list, "AI智能推荐数据");
    }

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) { return AjaxResult.success(service.selectAiRecommendById(id)); }

    @Log(title = "AI智能推荐", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrmAiRecommend entity) { return toAjax(service.insertAiRecommend(entity)); }

    @Log(title = "AI智能推荐", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrmAiRecommend entity) { return toAjax(service.updateAiRecommend(entity)); }

    @Log(title = "AI智能推荐", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) { return toAjax(service.deleteAiRecommendByIds(ids)); }
}
