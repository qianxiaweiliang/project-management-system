package com.test.project.biz;

import java.util.List;

import com.test.project.entity.ProjectEntity;

public interface IProjectBiz {

    /**
     * 描述：查询列表
     * 
     * @param entity
     * @return
     * @return List<ProjectEntity>
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     */
    public List<ProjectEntity> list(ProjectEntity entity);

    /**
     * 描述：保存
     * 
     * @param entity
     * @return void
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     * @throws Exception
     */
    public void save(ProjectEntity entity) throws Exception;

    /**
     * 描述：删除
     * 
     * @param id
     * @return void
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     * @throws Exception
     */
    public void delete(Long id) throws Exception;

    /**
     * 描述：修改（查询此条信息）
     * 
     * @return
     * @return ProjectEntity
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     * @throws Exception
     */
    public ProjectEntity edit(Long id) throws Exception;

    /**
     * 描述：导出excel
     * 
     * @param entity
     * @param flag 0:导出excel 1:导出模板
     * @return void
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     */
    public void export(ProjectEntity entity, Integer flag);

    /**
     * 描述：导入excel
     * 
     * @return void
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     */
    public void importExcel();
}
