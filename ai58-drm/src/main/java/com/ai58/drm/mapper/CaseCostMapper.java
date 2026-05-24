package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.CaseCost;

public interface CaseCostMapper {
    public CaseCost selectCaseCostById(Long caseId);
    public List<CaseCost> selectCaseCostList(CaseCost caseCost);
    public int insertCaseCost(CaseCost caseCost);
    public int updateCaseCost(CaseCost caseCost);
    public int deleteCaseCostById(Long caseId);
    public int deleteCaseCostByIds(Long[] caseIds);
}
