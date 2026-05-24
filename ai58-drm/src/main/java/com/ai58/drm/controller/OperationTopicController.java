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
import com.ai58.drm.domain.OperationTopic;
import com.ai58.drm.service.IOperationTopicService;

/**
 * 专题分析Controller
 *
 * @author ai58
 */
@RestController
@RequestMapping("/drm/operation/topic")
public class OperationTopicController extends BaseController {
    @Autowired
    private IOperationTopicService operationTopicService;

    /**
     * 查询专题分析列表
     */
    @GetMapping("/list")
    public TableDataInfo list(OperationTopic operationTopic) {
        startPage();
        List<OperationTopic> list = operationTopicService.selectOperationTopicList(operationTopic);
        return getDataTable(list);
    }

    /**
     * 导出专题分析列表
     */
    @Log(title = "专题分析", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, OperationTopic operationTopic) {
        List<OperationTopic> list = operationTopicService.selectOperationTopicList(operationTopic);
        ExcelUtil<OperationTopic> util = new ExcelUtil<OperationTopic>(OperationTopic.class);
        util.exportExcel(response, list, "专题分析数据");
    }

    /**
     * 获取专题分析详细信息
     */
    @GetMapping(value = "/{topicId}")
    public AjaxResult getInfo(@PathVariable("topicId") Long topicId) {
        return success(operationTopicService.selectOperationTopicById(topicId));
    }

    /**
     * 新增专题分析
     */
    @Log(title = "专题分析", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody OperationTopic operationTopic) {
        operationTopic.setCreateBy(getUsername());
        return toAjax(operationTopicService.insertOperationTopic(operationTopic));
    }

    /**
     * 修改专题分析
     */
    @Log(title = "专题分析", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody OperationTopic operationTopic) {
        operationTopic.setUpdateBy(getUsername());
        return toAjax(operationTopicService.updateOperationTopic(operationTopic));
    }

    /**
     * 删除专题分析
     */
    @Log(title = "专题分析", businessType = BusinessType.DELETE)
    @DeleteMapping("/{topicIds}")
    public AjaxResult remove(@PathVariable Long[] topicIds) {
        return toAjax(operationTopicService.deleteOperationTopicByIds(topicIds));
    }
}
