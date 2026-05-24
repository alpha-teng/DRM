package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.EfficiencyPerf;

public interface IEfficiencyPerfService {
    public EfficiencyPerf selectEfficiencyPerfById(Long perfId);
    public List<EfficiencyPerf> selectEfficiencyPerfList(EfficiencyPerf efficiencyperf);
    public int insertEfficiencyPerf(EfficiencyPerf efficiencyperf);
    public int updateEfficiencyPerf(EfficiencyPerf efficiencyperf);
    public int deleteEfficiencyPerfByIds(Long[] perfIds);
    public int deleteEfficiencyPerfById(Long perfId);
}
