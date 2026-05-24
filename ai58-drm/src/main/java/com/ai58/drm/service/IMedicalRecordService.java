package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrmMedicalRecord;

public interface IMedicalRecordService {
    public DrmMedicalRecord selectMedicalRecordById(Long id);
    public List<DrmMedicalRecord> selectMedicalRecordList(DrmMedicalRecord entity);
    public int insertMedicalRecord(DrmMedicalRecord entity);
    public int updateMedicalRecord(DrmMedicalRecord entity);
    public int deleteMedicalRecordByIds(Long[] ids);
    public int deleteMedicalRecordById(Long id);
}
