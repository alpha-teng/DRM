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
import com.ai58.drm.domain.Rbrvs;
import com.ai58.drm.service.IRbrvsService;

@RestController
@RequestMapping("/drm/rbrvs")
public class RbrvsController extends BaseController {
    @Autowired
    private IRbrvsService rbrvsService;

    @GetMapping("/list")
    public TableDataInfo list(Rbrvs rbrvs) {
        startPage();
        List<Rbrvs> list = rbrvsService.selectRbrvsList(rbrvs);
        return getDataTable(list);
    }

    @Log(title = "RBRVS", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Rbrvs rbrvs) {
        List<Rbrvs> list = rbrvsService.selectRbrvsList(rbrvs);
        ExcelUtil<Rbrvs> util = new ExcelUtil<Rbrvs>(Rbrvs.class);
        util.exportExcel(response, list, "RBRVS数据");
    }

    @GetMapping(value = "/{rbrvsId}")
    public AjaxResult getInfo(@PathVariable Long rbrvsId) {
        return success(rbrvsService.selectRbrvsById(rbrvsId));
    }

    @Log(title = "RBRVS", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Rbrvs rbrvs) {
        rbrvs.setCreateBy(getUsername());
        return toAjax(rbrvsService.insertRbrvs(rbrvs));
    }

    @Log(title = "RBRVS", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Rbrvs rbrvs) {
        rbrvs.setUpdateBy(getUsername());
        return toAjax(rbrvsService.updateRbrvs(rbrvs));
    }

    @Log(title = "RBRVS", businessType = BusinessType.DELETE)
    @DeleteMapping("/{rbrvsIds}")
    public AjaxResult remove(@PathVariable Long[] rbrvsIds) {
        return toAjax(rbrvsService.deleteRbrvsByIds(rbrvsIds));
    }
}
