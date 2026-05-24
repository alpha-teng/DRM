package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.RbrvsMapper;
import com.ai58.drm.domain.Rbrvs;
import com.ai58.drm.service.IRbrvsService;

@Service
public class RbrvsServiceImpl implements IRbrvsService {
    @Autowired
    private RbrvsMapper rbrvsMapper;

    @Override
    public Rbrvs selectRbrvsById(Long rbrvsId) {
        return rbrvsMapper.selectRbrvsById(rbrvsId);
    }

    @Override
    public List<Rbrvs> selectRbrvsList(Rbrvs rbrvs) {
        return rbrvsMapper.selectRbrvsList(rbrvs);
    }

    @Override
    public int insertRbrvs(Rbrvs rbrvs) {
        return rbrvsMapper.insertRbrvs(rbrvs);
    }

    @Override
    public int updateRbrvs(Rbrvs rbrvs) {
        return rbrvsMapper.updateRbrvs(rbrvs);
    }

    @Override
    public int deleteRbrvsByIds(Long[] rbrvsIds) {
        return rbrvsMapper.deleteRbrvsByIds(rbrvsIds);
    }

    @Override
    public int deleteRbrvsById(Long rbrvsId) {
        return rbrvsMapper.deleteRbrvsById(rbrvsId);
    }
}
