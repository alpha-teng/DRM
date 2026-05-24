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
import com.ai58.drm.domain.DrmMedicalRecord;
import com.ai58.drm.service.IMedicalRecordService;
import com.ai58.common.utils.poi.ExcelUtil;
import com.ai58.common.core.page.TableDataInfo;

@RestController
@RequestMapping("/drm/medicalRecord")
public class MedicalRecordController extends BaseController {
    @Autowired
    private IMedicalRecordService service;

    @GetMapping("/list")
    public TableDataInfo list(DrmMedicalRecord entity) {
        startPage();
        List<DrmMedicalRecord> list = service.selectMedicalRecordList(entity);
        return getDataTable(list);
    }

    @Log(title = "病案质量", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrmMedicalRecord entity) {
        List<DrmMedicalRecord> list = service.selectMedicalRecordList(entity);
        ExcelUtil<DrmMedicalRecord> util = new ExcelUtil<DrmMedicalRecord>(DrmMedicalRecord.class);
        util.exportExcel(response, list, "病案质量数据");
    }

    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) { return AjaxResult.success(service.selectMedicalRecordById(id)); }

    @Log(title = "病案质量", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrmMedicalRecord entity) { return toAjax(service.insertMedicalRecord(entity)); }

    @Log(title = "病案质量", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrmMedicalRecord entity) { return toAjax(service.updateMedicalRecord(entity)); }

    @Log(title = "病案质量", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) { return toAjax(service.deleteMedicalRecordByIds(ids)); }
}
