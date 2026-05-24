package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.CaseCost;

public interface ICaseCostService {
    public CaseCost selectCaseCostById(Long caseId);
    public List<CaseCost> selectCaseCostList(CaseCost caseCost);
    public int insertCaseCost(CaseCost caseCost);
    public int updateCaseCost(CaseCost caseCost);
    public int deleteCaseCostByIds(Long[] caseIds);
    public int deleteCaseCostById(Long caseId);
}
