package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrgAnalysis;

/**
 * DrgAnalysis 服务层
 *
 * @author ai58
 */
public interface IDrgAnalysisService
{
    /**
     * 查询DrgAnalysis信息
     *
     * @param analysisId DrgAnalysisID
     * @return DrgAnalysis信息
     */
    public DrgAnalysis selectDrgAnalysisById(Long analysisId);

    /**
     * 查询DrgAnalysis列表
     *
     * @param drganalysis DrgAnalysis信息
     * @return DrgAnalysis集合
     */
    public List<DrgAnalysis> selectDrgAnalysisList(DrgAnalysis drganalysis);

    /**
     * 新增DrgAnalysis
     *
     * @param drganalysis DrgAnalysis信息
     * @return 结果
     */
    public int insertDrgAnalysis(DrgAnalysis drganalysis);

    /**
     * 修改DrgAnalysis
     *
     * @param drganalysis DrgAnalysis信息
     * @return 结果
     */
    public int updateDrgAnalysis(DrgAnalysis drganalysis);

    /**
     * 删除DrgAnalysis
     *
     * @param analysisId DrgAnalysisID
     * @return 结果
     */
    public int deleteDrgAnalysisById(Long analysisId);

    /**
     * 批量删除DrgAnalysis
     *
     * @param analysisIds 需要删除的DrgAnalysisID
     * @return 结果
     */
    public int deleteDrgAnalysisByIds(Long[] analysisIds);
}
