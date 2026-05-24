package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrgPerf;

public interface DrgPerfMapper {
    public DrgPerf selectDrgPerfById(Long perfId);
    public List<DrgPerf> selectDrgPerfList(DrgPerf drgperf);
    public int insertDrgPerf(DrgPerf drgperf);
    public int updateDrgPerf(DrgPerf drgperf);
    public int deleteDrgPerfById(Long perfId);
    public int deleteDrgPerfByIds(Long[] perfIds);
}
