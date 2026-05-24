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
import com.ai58.drm.domain.DrgPerf;
import com.ai58.drm.service.IDrgPerfService;

@RestController
@RequestMapping("/drm/drgPerf")
public class DrgPerfController extends BaseController {
    @Autowired
    private IDrgPerfService drgperfService;

    @GetMapping("/list")
    public TableDataInfo list(DrgPerf drgperf) {
        startPage();
        List<DrgPerf> list = drgperfService.selectDrgPerfList(drgperf);
        return getDataTable(list);
    }

    @Log(title = "DRG绩效", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DrgPerf drgperf) {
        List<DrgPerf> list = drgperfService.selectDrgPerfList(drgperf);
        ExcelUtil<DrgPerf> util = new ExcelUtil<DrgPerf>(DrgPerf.class);
        util.exportExcel(response, list, "DRG绩效数据");
    }

    @GetMapping(value = "/{perfId}")
    public AjaxResult getInfo(@PathVariable Long perfId) {
        return success(drgperfService.selectDrgPerfById(perfId));
    }

    @Log(title = "DRG绩效", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DrgPerf drgperf) {
        drgperf.setCreateBy(getUsername());
        return toAjax(drgperfService.insertDrgPerf(drgperf));
    }

    @Log(title = "DRG绩效", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DrgPerf drgperf) {
        drgperf.setUpdateBy(getUsername());
        return toAjax(drgperfService.updateDrgPerf(drgperf));
    }

    @Log(title = "DRG绩效", businessType = BusinessType.DELETE)
    @DeleteMapping("/{perfIds}")
    public AjaxResult remove(@PathVariable Long[] perfIds) {
        return toAjax(drgperfService.deleteDrgPerfByIds(perfIds));
    }
}
