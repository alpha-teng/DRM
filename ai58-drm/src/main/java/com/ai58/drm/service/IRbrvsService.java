package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.Rbrvs;

public interface IRbrvsService {
    public Rbrvs selectRbrvsById(Long rbrvsId);
    public List<Rbrvs> selectRbrvsList(Rbrvs rbrvs);
    public int insertRbrvs(Rbrvs rbrvs);
    public int updateRbrvs(Rbrvs rbrvs);
    public int deleteRbrvsByIds(Long[] rbrvsIds);
    public int deleteRbrvsById(Long rbrvsId);
}
