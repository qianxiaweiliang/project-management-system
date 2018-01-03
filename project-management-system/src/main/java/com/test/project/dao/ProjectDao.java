package com.test.project.dao;

import java.util.List;

import com.test.project.entity.ProjectEntity;

public interface ProjectDao {

    public void save(ProjectEntity entity);

    public ProjectEntity selectProjectById(Long id);

    public List<ProjectEntity> selectProject(ProjectEntity entity);

    public void updateProject(ProjectEntity entity);

    public void deleteProject(Long id);
}
