package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrgPerf;

public interface IDrgPerfService {
    public DrgPerf selectDrgPerfById(Long perfId);
    public List<DrgPerf> selectDrgPerfList(DrgPerf drgperf);
    public int insertDrgPerf(DrgPerf drgperf);
    public int updateDrgPerf(DrgPerf drgperf);
    public int deleteDrgPerfByIds(Long[] perfIds);
    public int deleteDrgPerfById(Long perfId);
}
