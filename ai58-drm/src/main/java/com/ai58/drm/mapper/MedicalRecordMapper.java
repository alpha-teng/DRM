package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrmMedicalRecord;

public interface MedicalRecordMapper {
    public DrmMedicalRecord selectMedicalRecordById(Long id);
    public List<DrmMedicalRecord> selectMedicalRecordList(DrmMedicalRecord entity);
    public int insertMedicalRecord(DrmMedicalRecord entity);
    public int updateMedicalRecord(DrmMedicalRecord entity);
    public int deleteMedicalRecordById(Long id);
    public int deleteMedicalRecordByIds(Long[] ids);
}
