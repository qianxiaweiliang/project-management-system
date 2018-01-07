package com.test.config.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.config.biz.IConfigBiz;
import com.test.config.entity.ConfigEntity;
import com.test.config.enums.EnumConfigStatus;

@Controller
@RequestMapping("/config")
public class ConfigController {

	@Autowired
	private IConfigBiz config;

	@RequestMapping("/test")
	public String test() {

		System.out.println("111");
		return "config/configList";
	}

	/**
	 * 描述：查询配置列表
	 * 
	 * @param kind
	 * @param description
	 * @param status
	 * @param model
	 * @return
	 * @return String
	 * @exception @createTime：2017年12月28日
	 * @author: wangzl
	 */
	@RequestMapping("/list")
	public String list(Integer kind, String description, Integer status, Model model) {
		List<ConfigEntity> list = config.list(kind, description, status);
		model.addAttribute("list", list);
		return "config/configList";
	}

	/**
	 * 描述：保存配置
	 * 
	 * @return
	 * @return String
	 * @exception @createTime：2018年1月3日
	 * @author: wangzl
	 * @throws Exception
	 */
	@RequestMapping("/save")
	public String save(ConfigEntity entity) throws Exception {
		config.save(entity);
		return "redirect:/config/list";
	}

	/**
	 * 描述：修改配置
	 * 
	 * @return
	 * @return String
	 * @exception @createTime：2018年1月3日
	 * @author: wangzl
	 * @throws Exception
	 */
	@RequestMapping("/edit")
	public String edit(Long id, Model model) throws Exception {
		model.addAttribute("entity", config.edit(id));
		return "config/edit";
	}

	/**
	 * 描述：改变配置状态
	 * 
	 * @return
	 * @return String
	 * @exception @createTime：2018年1月3日
	 * @author: wangzl
	 * @throws Exception
	 */
	@RequestMapping("/changestatus")
	public String changeStatus(Long id, Integer status) throws Exception {
		config.changeStatus(id, status);
		return "redirect:/config/list";
	}

	/**
	 * 描述：下拉框
	 * 
	 * @return
	 * @return List<ConfigEntity>
	 * @exception @createTime：2018年1月3日
	 * @author: wangzl
	 */
	@RequestMapping("/selectlist")
	public @ResponseBody List<ConfigEntity> selectlist(Integer kind) {
		return config.list(kind, null, EnumConfigStatus.VALID.getCode());
	}
}
