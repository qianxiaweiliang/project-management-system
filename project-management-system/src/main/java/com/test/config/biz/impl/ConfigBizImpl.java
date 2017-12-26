package com.test.config.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.config.biz.IConfigBiz;
import com.test.config.dao.ConfigDao;

@Service
public class ConfigBizImpl implements IConfigBiz {

    @Autowired
    private ConfigDao config;

    @Override
    public void test() {
        config.addTestUser();
    }
}
