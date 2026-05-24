package com.ai58.drm.service;

import java.util.List;
import com.ai58.drm.domain.ProjectCost;

public interface IProjectCostService {
    public ProjectCost selectProjectCostById(Long projectId);
    public List<ProjectCost> selectProjectCostList(ProjectCost projectCost);
    public int insertProjectCost(ProjectCost projectCost);
    public int updateProjectCost(ProjectCost projectCost);
    public int deleteProjectCostByIds(Long[] projectIds);
    public int deleteProjectCostById(Long projectId);
}
