package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrmAiWarning;

public interface IAiWarningService {
    public DrmAiWarning selectAiWarningById(Long id);
    public List<DrmAiWarning> selectAiWarningList(DrmAiWarning entity);
    public int insertAiWarning(DrmAiWarning entity);
    public int updateAiWarning(DrmAiWarning entity);
    public int deleteAiWarningByIds(Long[] ids);
    public int deleteAiWarningById(Long id);
}
