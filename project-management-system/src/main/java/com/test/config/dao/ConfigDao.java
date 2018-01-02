package com.test.config.dao;

import org.apache.ibatis.annotations.Param;

import com.test.config.entity.ConfigEntity;


public interface ConfigDao {

    public void addTestUser(@Param("kind") Integer kind, @Param("status") Integer status);

    public void addTestUser1(ConfigEntity entity);
}
