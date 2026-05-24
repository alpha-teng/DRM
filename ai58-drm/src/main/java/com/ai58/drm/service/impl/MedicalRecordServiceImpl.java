package com.ai58.drm.service.impl;

import java.util.List;
import com.ai58.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.MedicalRecordMapper;
import com.ai58.drm.domain.DrmMedicalRecord;
import com.ai58.drm.service.IMedicalRecordService;

@Service
public class MedicalRecordServiceImpl implements IMedicalRecordService {
    @Autowired
    private MedicalRecordMapper mapper;

    @Override
    public DrmMedicalRecord selectMedicalRecordById(Long id) { return mapper.selectMedicalRecordById(id); }

    @Override
    public List<DrmMedicalRecord> selectMedicalRecordList(DrmMedicalRecord entity) { return mapper.selectMedicalRecordList(entity); }

    @Override
    public int insertMedicalRecord(DrmMedicalRecord entity) {
        entity.setCreateTime(DateUtils.getNowDate());
        return mapper.insertMedicalRecord(entity);
    }

    @Override
    public int updateMedicalRecord(DrmMedicalRecord entity) {
        entity.setUpdateTime(DateUtils.getNowDate());
        return mapper.updateMedicalRecord(entity);
    }

    @Override
    public int deleteMedicalRecordByIds(Long[] ids) { return mapper.deleteMedicalRecordByIds(ids); }

    @Override
    public int deleteMedicalRecordById(Long id) { return mapper.deleteMedicalRecordById(id); }
}
