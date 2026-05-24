package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.DrgDoctorMapper;
import com.ai58.drm.domain.DrgDoctor;
import com.ai58.drm.service.IDrgDoctorService;

@Service
public class DrgDoctorServiceImpl implements IDrgDoctorService {
    @Autowired
    private DrgDoctorMapper drgDoctorMapper;

    @Override
    public DrgDoctor selectDrgDoctorById(Long doctorId) {
        return drgDoctorMapper.selectDrgDoctorById(doctorId);
    }

    @Override
    public List<DrgDoctor> selectDrgDoctorList(DrgDoctor drgdoctor) {
        return drgDoctorMapper.selectDrgDoctorList(drgdoctor);
    }

    @Override
    public int insertDrgDoctor(DrgDoctor drgdoctor) {
        return drgDoctorMapper.insertDrgDoctor(drgdoctor);
    }

    @Override
    public int updateDrgDoctor(DrgDoctor drgdoctor) {
        return drgDoctorMapper.updateDrgDoctor(drgdoctor);
    }

    @Override
    public int deleteDrgDoctorByIds(Long[] doctorIds) {
        return drgDoctorMapper.deleteDrgDoctorByIds(doctorIds);
    }

    @Override
    public int deleteDrgDoctorById(Long doctorId) {
        return drgDoctorMapper.deleteDrgDoctorById(doctorId);
    }
}
