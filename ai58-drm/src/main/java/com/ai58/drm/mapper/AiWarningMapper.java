package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrmAiWarning;

public interface AiWarningMapper {
    public DrmAiWarning selectAiWarningById(Long id);
    public List<DrmAiWarning> selectAiWarningList(DrmAiWarning entity);
    public int insertAiWarning(DrmAiWarning entity);
    public int updateAiWarning(DrmAiWarning entity);
    public int deleteAiWarningById(Long id);
    public int deleteAiWarningByIds(Long[] ids);
}
