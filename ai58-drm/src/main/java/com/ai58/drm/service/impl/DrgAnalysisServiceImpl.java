package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.DrgAnalysisMapper;
import com.ai58.drm.domain.DrgAnalysis;
import com.ai58.drm.service.IDrgAnalysisService;

/**
 * DrgAnalysis 服务层实现
 *
 * @author ai58
 */
@Service
public class DrgAnalysisServiceImpl implements IDrgAnalysisService
{
    @Autowired
    private DrgAnalysisMapper drganalysisMapper;

    /**
     * 查询DrgAnalysis信息
     *
     * @param analysisId DrgAnalysisID
     * @return DrgAnalysis信息
     */
    @Override
    public DrgAnalysis selectDrgAnalysisById(Long analysisId)
    {
        DrgAnalysis entity = new DrgAnalysis();
        entity.setAnalysisId(analysisId);
        return drganalysisMapper.selectDrgAnalysis(entity);
    }

    /**
     * 查询DrgAnalysis列表
     *
     * @param drganalysis DrgAnalysis信息
     * @return DrgAnalysis集合
     */
    @Override
    public List<DrgAnalysis> selectDrgAnalysisList(DrgAnalysis drganalysis)
    {
        return drganalysisMapper.selectDrgAnalysisList(drganalysis);
    }

    /**
     * 新增DrgAnalysis
     *
     * @param drganalysis DrgAnalysis信息
     * @return 结果
     */
    @Override
    public int insertDrgAnalysis(DrgAnalysis drganalysis)
    {
        return drganalysisMapper.insertDrgAnalysis(drganalysis);
    }

    /**
     * 修改DrgAnalysis
     *
     * @param drganalysis DrgAnalysis信息
     * @return 结果
     */
    @Override
    public int updateDrgAnalysis(DrgAnalysis drganalysis)
    {
        return drganalysisMapper.updateDrgAnalysis(drganalysis);
    }

    /**
     * 删除DrgAnalysis
     *
     * @param analysisId DrgAnalysisID
     * @return 结果
     */
    @Override
    public int deleteDrgAnalysisById(Long analysisId)
    {
        return drganalysisMapper.deleteDrgAnalysisById(analysisId);
    }

    /**
     * 批量删除DrgAnalysis
     *
     * @param analysisIds 需要删除的DrgAnalysisID
     * @return 结果
     */
    @Override
    public int deleteDrgAnalysisByIds(Long[] analysisIds)
    {
        return drganalysisMapper.deleteDrgAnalysisByIds(analysisIds);
    }
}
