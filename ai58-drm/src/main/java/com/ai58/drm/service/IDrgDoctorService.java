package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.DrgDoctor;

public interface IDrgDoctorService {
    public DrgDoctor selectDrgDoctorById(Long doctorId);
    public List<DrgDoctor> selectDrgDoctorList(DrgDoctor drgdoctor);
    public int insertDrgDoctor(DrgDoctor drgdoctor);
    public int updateDrgDoctor(DrgDoctor drgdoctor);
    public int deleteDrgDoctorByIds(Long[] doctorIds);
    public int deleteDrgDoctorById(Long doctorId);
}
