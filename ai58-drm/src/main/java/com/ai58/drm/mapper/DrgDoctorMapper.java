package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.DrgDoctor;

public interface DrgDoctorMapper {
    public DrgDoctor selectDrgDoctorById(Long doctorId);
    public List<DrgDoctor> selectDrgDoctorList(DrgDoctor drgdoctor);
    public int insertDrgDoctor(DrgDoctor drgdoctor);
    public int updateDrgDoctor(DrgDoctor drgdoctor);
    public int deleteDrgDoctorById(Long doctorId);
    public int deleteDrgDoctorByIds(Long[] doctorIds);
}
