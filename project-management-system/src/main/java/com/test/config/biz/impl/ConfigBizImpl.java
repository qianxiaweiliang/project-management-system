package com.test.config.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.config.biz.IConfigBiz;
import com.test.config.dao.ConfigDao;
import com.test.config.entity.ConfigEntity;

@Service
public class ConfigBizImpl implements IConfigBiz {

    @Autowired
    private ConfigDao config;

    @Override
    public void test() {
        config.addTestUser(3, 1);

        ConfigEntity entity = new ConfigEntity();
        entity.setKind(3);
        entity.setDescription("zxczx");
        config.addTestUser1(entity);
    }

    @Override
    public List<ConfigEntity> list(Integer kind, String description, Integer status) {
        // TODO Auto-generated method stub
        return null;
    }
}
