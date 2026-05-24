package com.ai58.drm.service.impl;

import java.util.List;
import com.ai58.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.AiRecommendMapper;
import com.ai58.drm.domain.DrmAiRecommend;
import com.ai58.drm.service.IAiRecommendService;

@Service
public class AiRecommendServiceImpl implements IAiRecommendService {
    @Autowired
    private AiRecommendMapper mapper;

    @Override
    public DrmAiRecommend selectAiRecommendById(Long id) { return mapper.selectAiRecommendById(id); }

    @Override
    public List<DrmAiRecommend> selectAiRecommendList(DrmAiRecommend entity) { return mapper.selectAiRecommendList(entity); }

    @Override
    public int insertAiRecommend(DrmAiRecommend entity) {
        entity.setCreateTime(DateUtils.getNowDate());
        return mapper.insertAiRecommend(entity);
    }

    @Override
    public int updateAiRecommend(DrmAiRecommend entity) {
        entity.setUpdateTime(DateUtils.getNowDate());
        return mapper.updateAiRecommend(entity);
    }

    @Override
    public int deleteAiRecommendByIds(Long[] ids) { return mapper.deleteAiRecommendByIds(ids); }

    @Override
    public int deleteAiRecommendById(Long id) { return mapper.deleteAiRecommendById(id); }
}
