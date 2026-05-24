package com.ai58.drm.mapper;

import java.util.List;
import com.ai58.drm.domain.ProjectCost;

public interface ProjectCostMapper {
    public ProjectCost selectProjectCostById(Long projectId);
    public List<ProjectCost> selectProjectCostList(ProjectCost projectCost);
    public int insertProjectCost(ProjectCost projectCost);
    public int updateProjectCost(ProjectCost projectCost);
    public int deleteProjectCostById(Long projectId);
    public int deleteProjectCostByIds(Long[] projectIds);
}
