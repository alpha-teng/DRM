package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.EfficiencyPerfMapper;
import com.ai58.drm.domain.EfficiencyPerf;
import com.ai58.drm.service.IEfficiencyPerfService;

@Service
public class EfficiencyPerfServiceImpl implements IEfficiencyPerfService {
    @Autowired
    private EfficiencyPerfMapper efficiencyPerfMapper;

    @Override
    public EfficiencyPerf selectEfficiencyPerfById(Long perfId) {
        return efficiencyPerfMapper.selectEfficiencyPerfById(perfId);
    }

    @Override
    public List<EfficiencyPerf> selectEfficiencyPerfList(EfficiencyPerf efficiencyperf) {
        return efficiencyPerfMapper.selectEfficiencyPerfList(efficiencyperf);
    }

    @Override
    public int insertEfficiencyPerf(EfficiencyPerf efficiencyperf) {
        return efficiencyPerfMapper.insertEfficiencyPerf(efficiencyperf);
    }

    @Override
    public int updateEfficiencyPerf(EfficiencyPerf efficiencyperf) {
        return efficiencyPerfMapper.updateEfficiencyPerf(efficiencyperf);
    }

    @Override
    public int deleteEfficiencyPerfByIds(Long[] perfIds) {
        return efficiencyPerfMapper.deleteEfficiencyPerfByIds(perfIds);
    }

    @Override
    public int deleteEfficiencyPerfById(Long perfId) {
        return efficiencyPerfMapper.deleteEfficiencyPerfById(perfId);
    }
}
