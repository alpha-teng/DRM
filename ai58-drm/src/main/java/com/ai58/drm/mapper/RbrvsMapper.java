package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.Rbrvs;

public interface RbrvsMapper {
    public Rbrvs selectRbrvsById(Long rbrvsId);
    public List<Rbrvs> selectRbrvsList(Rbrvs rbrvs);
    public int insertRbrvs(Rbrvs rbrvs);
    public int updateRbrvs(Rbrvs rbrvs);
    public int deleteRbrvsById(Long rbrvsId);
    public int deleteRbrvsByIds(Long[] rbrvsIds);
}
