package com.test.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.project.biz.IProjectBiz;
import com.test.project.entity.ProjectEntity;
import com.test.project.enums.EnumProjectExport;

@Controller
@RequestMapping("/project")
public class ProjectController {

    @Autowired
    private IProjectBiz projectBiz;

    /**
     * 描述：查询列表
     * 
     * @param model
     * @param entity
     * @return
     * @return String
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     */
    @RequestMapping("/list")
    public String list(Model model, ProjectEntity entity) {
        model.addAttribute("list", projectBiz.list(entity));
        return "";
    }

    /**
     * 描述：保存
     * 
     * @param entity
     * @return
     * @return String
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     * @throws Exception
     */
    @RequestMapping("/save")
    public String save(ProjectEntity entity) throws Exception {
        projectBiz.save(entity);
        return "redirect:/project/list";
    }

    /**
     * 描述：删除
     * 
     * @param id
     * @return
     * @return String
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     * @throws Exception
     */
    @RequestMapping("/delete")
    public String delete(Long id) throws Exception {
        projectBiz.delete(id);
        return "redirect:/project/list";
    }

    /**
     * 描述：修改
     * 
     * @param id
     * @param model
     * @return
     * @return String
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     * @throws Exception
     */
    @RequestMapping("/edit")
    public String edit(Long id, Model model) throws Exception {
        model.addAttribute("entity", projectBiz.edit(id));
        return "";
    }

    /**
     * 描述：导出excel
     * 
     * @param entity
     * @return void
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     */
    @RequestMapping("/export")
    public @ResponseBody void export(ProjectEntity entity) {
        projectBiz.export(entity, EnumProjectExport.EXCEL.getCode());
    }

    /**
     * 描述：下载模板
     * 
     * @return void
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     */
    @RequestMapping("/downloadtemplate")
    public @ResponseBody void downloadTemplate() {
        projectBiz.export(null, EnumProjectExport.TEMPLATE.getCode());
    }

    /**
     * 描述：导入Excel
     * 
     * @return
     * @return return_type
     * @exception
     * @createTime：2018年1月3日
     * @author: wangzl
     */
    @RequestMapping("/import")
    public String importExcel() {
        projectBiz.importExcel();
        return "redirect:/project/list";
    }
}
