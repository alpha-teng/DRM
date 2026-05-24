package com.ai58.drm.service.impl;

import java.util.List;
import com.ai58.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.AiWarningMapper;
import com.ai58.drm.domain.DrmAiWarning;
import com.ai58.drm.service.IAiWarningService;

@Service
public class AiWarningServiceImpl implements IAiWarningService {
    @Autowired
    private AiWarningMapper mapper;

    @Override
    public DrmAiWarning selectAiWarningById(Long id) { return mapper.selectAiWarningById(id); }

    @Override
    public List<DrmAiWarning> selectAiWarningList(DrmAiWarning entity) { return mapper.selectAiWarningList(entity); }

    @Override
    public int insertAiWarning(DrmAiWarning entity) {
        entity.setCreateTime(DateUtils.getNowDate());
        return mapper.insertAiWarning(entity);
    }

    @Override
    public int updateAiWarning(DrmAiWarning entity) {
        entity.setUpdateTime(DateUtils.getNowDate());
        return mapper.updateAiWarning(entity);
    }

    @Override
    public int deleteAiWarningByIds(Long[] ids) { return mapper.deleteAiWarningByIds(ids); }

    @Override
    public int deleteAiWarningById(Long id) { return mapper.deleteAiWarningById(id); }
}
