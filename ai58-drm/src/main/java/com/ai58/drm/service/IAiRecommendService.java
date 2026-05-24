package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrmAiRecommend;

public interface IAiRecommendService {
    public DrmAiRecommend selectAiRecommendById(Long id);
    public List<DrmAiRecommend> selectAiRecommendList(DrmAiRecommend entity);
    public int insertAiRecommend(DrmAiRecommend entity);
    public int updateAiRecommend(DrmAiRecommend entity);
    public int deleteAiRecommendByIds(Long[] ids);
    public int deleteAiRecommendById(Long id);
}
