package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.EfficiencyPerf;

public interface EfficiencyPerfMapper {
    public EfficiencyPerf selectEfficiencyPerfById(Long perfId);
    public List<EfficiencyPerf> selectEfficiencyPerfList(EfficiencyPerf efficiencyperf);
    public int insertEfficiencyPerf(EfficiencyPerf efficiencyperf);
    public int updateEfficiencyPerf(EfficiencyPerf efficiencyperf);
    public int deleteEfficiencyPerfById(Long perfId);
    public int deleteEfficiencyPerfByIds(Long[] perfIds);
}
