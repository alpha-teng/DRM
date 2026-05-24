package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrmSyncTask;

public interface SyncTaskMapper {
    public DrmSyncTask selectSyncTaskById(Long id);
    public List<DrmSyncTask> selectSyncTaskList(DrmSyncTask entity);
    public int insertSyncTask(DrmSyncTask entity);
    public int updateSyncTask(DrmSyncTask entity);
    public int deleteSyncTaskById(Long id);
    public int deleteSyncTaskByIds(Long[] ids);
}
