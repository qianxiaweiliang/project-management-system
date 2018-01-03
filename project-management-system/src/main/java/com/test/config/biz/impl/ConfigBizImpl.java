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

    // @Override
    // public void test() {
    // config.addTestUser(3, 1);
    //
    // ConfigEntity entity = new ConfigEntity();
    // entity.setKind(3);
    // entity.setDescription("zxczx");
    // config.addTestUser1(entity);
    // }

    @Override
    public List<ConfigEntity> list(Integer kind, String description, Integer status) {
        // 封装查询条件
        ConfigEntity entity = new ConfigEntity();
        if (null != kind) {
            entity.setKind(kind);
        }
        if (null != description) {
            entity.setDescription(description);
        }
        if (null != status) {
            entity.setStatus(status);
        }

        // 查询
        return config.selectConfig(entity);
    }

    @Override
    public void save(ConfigEntity entity) throws Exception {
        // 检查是否有主键id判断新增还是修改
        if (null != entity.getId()) {
            config.updateConfig(entity);
            return;
        }

        // 校验是否已存在（查重）
        List<ConfigEntity> entities = config.selectConfigByDescription(entity);
        if (entities.size() > 0) {
            throw new Exception("已存在此条记录，不能添加！");
        }

        // 保存
        config.addConfig(entity);
    }

    @Override
    public ConfigEntity edit(Long id) throws Exception {
        // 查询是否存在此条记录
        ConfigEntity entity = config.selectConfigById(id);
        if (null == entity) {
            throw new Exception("此条记录不存在，请检查！");
        }

        // 返回此条记录
        return entity;
    }

    @Override
    public void changeStatus(Long id, Integer status) throws Exception {
        // 查询是否存在此条记录
        ConfigEntity entity = config.selectConfigById(id);
        if (null == entity) {
            throw new Exception("此条记录不存在，请检查！");
        }

        // 修改状态
        entity.setStatus(status);
        config.updateConfig(entity);
    }
}
