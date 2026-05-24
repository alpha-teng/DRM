package com.ai58.drm.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ai58.drm.mapper.ProjectCostMapper;
import com.ai58.drm.domain.ProjectCost;
import com.ai58.drm.service.IProjectCostService;

@Service
public class ProjectCostServiceImpl implements IProjectCostService {
    @Autowired
    private ProjectCostMapper projectCostMapper;

    @Override
    public ProjectCost selectProjectCostById(Long projectId) {
        return projectCostMapper.selectProjectCostById(projectId);
    }

    @Override
    public List<ProjectCost> selectProjectCostList(ProjectCost projectCost) {
        return projectCostMapper.selectProjectCostList(projectCost);
    }

    @Override
    public int insertProjectCost(ProjectCost projectCost) {
        return projectCostMapper.insertProjectCost(projectCost);
    }

    @Override
    public int updateProjectCost(ProjectCost projectCost) {
        return projectCostMapper.updateProjectCost(projectCost);
    }

    @Override
    public int deleteProjectCostByIds(Long[] projectIds) {
        return projectCostMapper.deleteProjectCostByIds(projectIds);
    }

    @Override
    public int deleteProjectCostById(Long projectId) {
        return projectCostMapper.deleteProjectCostById(projectId);
    }
}
