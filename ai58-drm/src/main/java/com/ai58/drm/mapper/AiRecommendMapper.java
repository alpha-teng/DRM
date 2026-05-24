package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrmAiRecommend;

public interface AiRecommendMapper {
    public DrmAiRecommend selectAiRecommendById(Long id);
    public List<DrmAiRecommend> selectAiRecommendList(DrmAiRecommend entity);
    public int insertAiRecommend(DrmAiRecommend entity);
    public int updateAiRecommend(DrmAiRecommend entity);
    public int deleteAiRecommendById(Long id);
    public int deleteAiRecommendByIds(Long[] ids);
}
