package com.test.config.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.config.biz.IConfigBiz;

@Controller
@RequestMapping("/config")
public class ConfigController {

    @Autowired
    private IConfigBiz config;

    @RequestMapping("/test")
    public String test() {
        config.test();
        return "config/configList";
    }
}
