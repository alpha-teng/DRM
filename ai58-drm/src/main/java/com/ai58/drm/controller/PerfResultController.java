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
import com.ai58.drm.domain.PerfResult;
import com.ai58.drm.service.IPerfResultService;

/**
 * 绩效结果 信息操作处理
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/perfResult")
public class PerfResultController extends BaseController
{
    @Autowired
    private IPerfResultService perfresultService;

    /**
     * 获取绩效结果列表
     */
    // @PreAuthorize("@ss.hasPermi('drm/perfResult:list')")
    @GetMapping("/list")
    public TableDataInfo list(PerfResult perfresult)
    {
        startPage();
        List<PerfResult> list = perfresultService.selectPerfResultList(perfresult);
        return getDataTable(list);
    }

    // @PreAuthorize("@ss.hasPermi('drm/perfResult:export')")
    @Log(title = "绩效结果", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PerfResult perfresult)
    {
        List<PerfResult> list = perfresultService.selectPerfResultList(perfresult);
        ExcelUtil<PerfResult> util = new ExcelUtil<PerfResult>(PerfResult.class);
        util.exportExcel(response, list, "绩效结果数据");
    }

    // @PreAuthorize("@ss.hasPermi('drm/perfResult:query')")
    @GetMapping(value = "/{resultId}")
    public AjaxResult getInfo(@PathVariable Long resultId)
    {
        return success(perfresultService.selectPerfResultById(resultId));
    }

    // @PreAuthorize("@ss.hasPermi('drm/perfResult:add')")
    @Log(title = "绩效结果", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PerfResult perfresult)
    {
        perfresult.setCreateBy(getUsername());
        return toAjax(perfresultService.insertPerfResult(perfresult));
    }

    // @PreAuthorize("@ss.hasPermi('drm/perfResult:edit')")
    @Log(title = "绩效结果", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PerfResult perfresult)
    {
        perfresult.setUpdateBy(getUsername());
        return toAjax(perfresultService.updatePerfResult(perfresult));
    }

    // @PreAuthorize("@ss.hasPermi('drm/perfResult:remove')")
    @Log(title = "绩效结果", businessType = BusinessType.DELETE)
    @DeleteMapping("/{resultIds}")
    public AjaxResult remove(@PathVariable Long[] resultIds)
    {
        return toAjax(perfresultService.deletePerfResultByIds(resultIds));
    }
}
