package com.test.config.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.config.biz.IConfigBiz;

@Controller
@RequestMapping("/config")
public class ConfigController {

    @Autowired
    private IConfigBiz config;

    @RequestMapping("/test")
    public String test() {

        System.out.println("111");
        config.test();
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
     * @exception
     * @createTime：2017年12月28日
     * @author: wangzl
     */
    @RequestMapping("/list")
    public String list(Integer kind, String description, Integer status, Model model) {
        // List<ConfigEntity> list = config.list(kind, description, status);
        // model.addAttribute("list", list);
        return "config/configList";
    }

    // public Long addConfig() {
    //
    // }
}
