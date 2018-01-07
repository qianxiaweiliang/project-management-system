package com.test.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	/**
	 * 描述：登陆
	 * 
	 * @return
	 * @return String
	 * @exception @createTime：2018年1月4日
	 * @author: wangzl
	 */
	@RequestMapping("/login")
	public String login() {
		return "redirect:/employee/main";
	}

	/**
	 * 描述：跳转首页
	 * 
	 * @return
	 * @return String
	 * @exception @createTime：2018年1月4日
	 * @author: wangzl
	 */
	@RequestMapping("/main")
	public String main() {
		return "common/main";
	}
}
