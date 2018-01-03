package com.test.config.dao;

import java.util.List;

import com.test.config.entity.ConfigEntity;


public interface ConfigDao {

    // public void addTestUser(@Param("kind") Integer kind, @Param("status")
    // Integer status);

    public void addConfig(ConfigEntity entity);

    public ConfigEntity selectConfigById(Long id);

    public List<ConfigEntity> selectConfig(ConfigEntity entity);

    public List<ConfigEntity> selectConfigByDescription(ConfigEntity entity);

    public void updateConfig(ConfigEntity entity);
}
