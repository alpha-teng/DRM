package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrgAnalysis;

/**
 * DRG分析 数据层
 *
 * @author ai58
 */
public interface DrgAnalysisMapper {

    public DrgAnalysis selectDrgAnalysis(DrgAnalysis analysis);
    public List<DrgAnalysis> selectDrgAnalysisList(DrgAnalysis analysis);
    public int insertDrgAnalysis(DrgAnalysis analysis);
    public int updateDrgAnalysis(DrgAnalysis analysis);
    public int deleteDrgAnalysisById(Long analysisId);
    public int deleteDrgAnalysisByIds(Long[] analysisIds);
}
