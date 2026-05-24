package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.CaseCostMapper;
import com.ai58.drm.domain.CaseCost;
import com.ai58.drm.service.ICaseCostService;

@Service
public class CaseCostServiceImpl implements ICaseCostService {
    @Autowired
    private CaseCostMapper caseCostMapper;

    @Override
    public CaseCost selectCaseCostById(Long caseId) {
        return caseCostMapper.selectCaseCostById(caseId);
    }

    @Override
    public List<CaseCost> selectCaseCostList(CaseCost caseCost) {
        return caseCostMapper.selectCaseCostList(caseCost);
    }

    @Override
    public int insertCaseCost(CaseCost caseCost) {
        return caseCostMapper.insertCaseCost(caseCost);
    }

    @Override
    public int updateCaseCost(CaseCost caseCost) {
        return caseCostMapper.updateCaseCost(caseCost);
    }

    @Override
    public int deleteCaseCostByIds(Long[] caseIds) {
        return caseCostMapper.deleteCaseCostByIds(caseIds);
    }

    @Override
    public int deleteCaseCostById(Long caseId) {
        return caseCostMapper.deleteCaseCostById(caseId);
    }
}
