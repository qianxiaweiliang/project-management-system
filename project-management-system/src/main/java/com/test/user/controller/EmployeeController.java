package com.test.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.user.biz.IEmployeeBiz;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private IEmployeeBiz employeeBiz;

    /**
     * 描述：登陆
     * 
     * @return
     * @return String
     * @exception @createTime：2018年1月4日
     * @author: wangzl
     */
    @RequestMapping("/login")
    public String login(String username, String password) {
        employeeBiz.login(username, password);
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
