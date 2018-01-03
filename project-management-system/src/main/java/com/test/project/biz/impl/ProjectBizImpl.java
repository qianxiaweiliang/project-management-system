package com.test.project.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.project.biz.IProjectBiz;
import com.test.project.dao.ProjectDao;
import com.test.project.entity.ProjectEntity;
import com.test.project.enums.EnumProjectExport;

@Service
public class ProjectBizImpl implements IProjectBiz {

    @Autowired
    private ProjectDao projectDao;

    @Override
    public List<ProjectEntity> list(ProjectEntity entity) {
        return projectDao.selectProject(entity);
    }

    @Override
    public void save(ProjectEntity entity) throws Exception {
        // 修改
        if (null != entity.getId()) {
            projectDao.updateProject(entity);
            return;
        }

        // 保存
        projectDao.save(entity);
    }

    @Override
    public void delete(Long id) throws Exception {
        // 查询是否存在此条记录
        ProjectEntity entity = projectDao.selectProjectById(id);
        if (null == entity) {
            throw new Exception("此条记录不存在，请检查！");
        }

        // 删除
        projectDao.deleteProject(id);
    }

    @Override
    public ProjectEntity edit(Long id) throws Exception {
        // 查询是否存在此条记录
        ProjectEntity entity = projectDao.selectProjectById(id);
        if (null == entity) {
            throw new Exception("此条记录不存在，请检查！");
        }

        // 返回此条记录
        return entity;
    }

    @Override
    public void export(ProjectEntity entity, Integer flag) {
        // 创建模板

        if (EnumProjectExport.TEMPLATE.getCode().equals(flag)) {
            // 导出模板

        }
        // 导出excel
        List<ProjectEntity> list = projectDao.selectProject(entity);
    }

    @Override
    public void importExcel() {
        // TODO Auto-generated method stub

    }

}
