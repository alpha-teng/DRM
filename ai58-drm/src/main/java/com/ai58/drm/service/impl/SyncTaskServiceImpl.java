package com.ai58.drm.service.impl;

import java.util.List;
import com.ai58.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.SyncTaskMapper;
import com.ai58.drm.domain.DrmSyncTask;
import com.ai58.drm.service.ISyncTaskService;

@Service
public class SyncTaskServiceImpl implements ISyncTaskService {
    @Autowired
    private SyncTaskMapper mapper;

    @Override
    public DrmSyncTask selectSyncTaskById(Long id) { return mapper.selectSyncTaskById(id); }

    @Override
    public List<DrmSyncTask> selectSyncTaskList(DrmSyncTask entity) { return mapper.selectSyncTaskList(entity); }

    @Override
    public int insertSyncTask(DrmSyncTask entity) {
        entity.setCreateTime(DateUtils.getNowDate());
        return mapper.insertSyncTask(entity);
    }

    @Override
    public int updateSyncTask(DrmSyncTask entity) {
        entity.setUpdateTime(DateUtils.getNowDate());
        return mapper.updateSyncTask(entity);
    }

    @Override
    public int deleteSyncTaskByIds(Long[] ids) { return mapper.deleteSyncTaskByIds(ids); }

    @Override
    public int deleteSyncTaskById(Long id) { return mapper.deleteSyncTaskById(id); }
}
