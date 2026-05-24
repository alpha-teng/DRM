package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.QualityPerfMapper;
import com.ai58.drm.domain.QualityPerf;
import com.ai58.drm.service.IQualityPerfService;

@Service
public class QualityPerfServiceImpl implements IQualityPerfService {
    @Autowired
    private QualityPerfMapper qualityPerfMapper;

    @Override
    public QualityPerf selectQualityPerfById(Long perfId) {
        return qualityPerfMapper.selectQualityPerfById(perfId);
    }

    @Override
    public List<QualityPerf> selectQualityPerfList(QualityPerf qualityperf) {
        return qualityPerfMapper.selectQualityPerfList(qualityperf);
    }

    @Override
    public int insertQualityPerf(QualityPerf qualityperf) {
        return qualityPerfMapper.insertQualityPerf(qualityperf);
    }

    @Override
    public int updateQualityPerf(QualityPerf qualityperf) {
        return qualityPerfMapper.updateQualityPerf(qualityperf);
    }

    @Override
    public int deleteQualityPerfByIds(Long[] perfIds) {
        return qualityPerfMapper.deleteQualityPerfByIds(perfIds);
    }

    @Override
    public int deleteQualityPerfById(Long perfId) {
        return qualityPerfMapper.deleteQualityPerfById(perfId);
    }
}
