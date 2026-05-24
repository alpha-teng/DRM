package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.DrgPerfMapper;
import com.ai58.drm.domain.DrgPerf;
import com.ai58.drm.service.IDrgPerfService;

@Service
public class DrgPerfServiceImpl implements IDrgPerfService {
    @Autowired
    private DrgPerfMapper drgPerfMapper;

    @Override
    public DrgPerf selectDrgPerfById(Long perfId) {
        return drgPerfMapper.selectDrgPerfById(perfId);
    }

    @Override
    public List<DrgPerf> selectDrgPerfList(DrgPerf drgperf) {
        return drgPerfMapper.selectDrgPerfList(drgperf);
    }

    @Override
    public int insertDrgPerf(DrgPerf drgperf) {
        return drgPerfMapper.insertDrgPerf(drgperf);
    }

    @Override
    public int updateDrgPerf(DrgPerf drgperf) {
        return drgPerfMapper.updateDrgPerf(drgperf);
    }

    @Override
    public int deleteDrgPerfByIds(Long[] perfIds) {
        return drgPerfMapper.deleteDrgPerfByIds(perfIds);
    }

    @Override
    public int deleteDrgPerfById(Long perfId) {
        return drgPerfMapper.deleteDrgPerfById(perfId);
    }
}
