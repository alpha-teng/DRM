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
import com.ai58.drm.domain.EfficiencyPerf;
import com.ai58.drm.service.IEfficiencyPerfService;

@RestController
@RequestMapping("drm/efficiencyPerf")
public class EfficiencyPerfController extends BaseController {
    @Autowired
    private IEfficiencyPerfService efficiencyperfService;

    @GetMapping("/list")
    public TableDataInfo list(EfficiencyPerf efficiencyperf) {
        startPage();
        List<EfficiencyPerf> list = efficiencyperfService.selectEfficiencyPerfList(efficiencyperf);
        return getDataTable(list);
    }

    @Log(title = "效率绩效", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, EfficiencyPerf efficiencyperf) {
        List<EfficiencyPerf> list = efficiencyperfService.selectEfficiencyPerfList(efficiencyperf);
        ExcelUtil<EfficiencyPerf> util = new ExcelUtil<EfficiencyPerf>(EfficiencyPerf.class);
        util.exportExcel(response, list, "效率绩效数据");
    }

    @GetMapping(value = "/{perfId}")
    public AjaxResult getInfo(@PathVariable Long perfId) {
        return success(efficiencyperfService.selectEfficiencyPerfById(perfId));
    }

    @Log(title = "效率绩效", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody EfficiencyPerf efficiencyperf) {
        efficiencyperf.setCreateBy(getUsername());
        return toAjax(efficiencyperfService.insertEfficiencyPerf(efficiencyperf));
    }

    @Log(title = "效率绩效", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody EfficiencyPerf efficiencyperf) {
        efficiencyperf.setUpdateBy(getUsername());
        return toAjax(efficiencyperfService.updateEfficiencyPerf(efficiencyperf));
    }

    @Log(title = "效率绩效", businessType = BusinessType.DELETE)
    @DeleteMapping("/{perfIds}")
    public AjaxResult remove(@PathVariable Long[] perfIds) {
        return toAjax(efficiencyperfService.deleteEfficiencyPerfByIds(perfIds));
    }
}
