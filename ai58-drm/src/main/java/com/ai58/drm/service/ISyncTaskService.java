package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrmSyncTask;

public interface ISyncTaskService {
    public DrmSyncTask selectSyncTaskById(Long id);
    public List<DrmSyncTask> selectSyncTaskList(DrmSyncTask entity);
    public int insertSyncTask(DrmSyncTask entity);
    public int updateSyncTask(DrmSyncTask entity);
    public int deleteSyncTaskByIds(Long[] ids);
    public int deleteSyncTaskById(Long id);
}
