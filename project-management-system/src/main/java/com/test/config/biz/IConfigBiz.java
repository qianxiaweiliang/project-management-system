package com.test.config.biz;

import java.util.List;

import com.test.config.entity.ConfigEntity;

public interface IConfigBiz {

    public void test();

    public List<ConfigEntity> list(Integer kind, String description, Integer status);
}
