package com.ai58.drm.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.ai58.drm.domain.DrgDoctor;
import com.ai58.drm.service.IDrgDoctorService;

@RestController
@RequestMapping("drm/drgDoctor")
public class DrgDoctorController extends BaseController {
    @Autowired
    private IDrgDoctorService drgdoctorService;

    @GetMapping("/list")
    public TableDataInfo list(DrgDoctor drgdoctor) {
        startPage();
        List<DrgDoctor> list = drgdoctorService.selectDrgDoctorList(drgdoctor);
        return getDataTable(list);
    }

    @Log(title = "医生DRG", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrgDoctor drgdoctor) {
        List<DrgDoctor> list = drgdoctorService.selectDrgDoctorList(drgdoctor);
        ExcelUtil<DrgDoctor> util = new ExcelUtil<DrgDoctor>(DrgDoctor.class);
        util.exportExcel(response, list, "医生DRG数据");
    }

    @GetMapping(value = "/{doctorId}")
    public AjaxResult getInfo(@PathVariable Long doctorId) {
        return success(drgdoctorService.selectDrgDoctorById(doctorId));
    }

    @Log(title = "医生DRG", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrgDoctor drgdoctor) {
        drgdoctor.setCreateBy(getUsername());
        return toAjax(drgdoctorService.insertDrgDoctor(drgdoctor));
    }

    @Log(title = "医生DRG", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrgDoctor drgdoctor) {
        drgdoctor.setUpdateBy(getUsername());
        return toAjax(drgdoctorService.updateDrgDoctor(drgdoctor));
    }

    @Log(title = "医生DRG", businessType = BusinessType.DELETE)
    @DeleteMapping("/{doctorIds}")
    public AjaxResult remove(@PathVariable Long[] doctorIds) {
        return toAjax(drgdoctorService.deleteDrgDoctorByIds(doctorIds));
    }
}
