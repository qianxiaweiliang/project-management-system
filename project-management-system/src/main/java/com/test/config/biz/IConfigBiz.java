package com.test.config.biz;

import java.util.List;

import com.test.config.entity.ConfigEntity;

public interface IConfigBiz {

	// void test();

	/**
	 * 描述：查询配置列表
	 * 
	 * @param kind
	 * @param description
	 * @param status
	 * @return
	 * @return List<ConfigEntity>
	 * @exception @createTime：2018年1月3日
	 * @author: wangzl
	 */
	public List<ConfigEntity> list(Integer kind, String description, Integer status);

	/**
	 * 描述：保存配置
	 * 
	 * @param entity
	 * @return void
	 * @exception @createTime：2018年1月3日
	 * @author: wangzl
	 * @throws Exception
	 */
	public void save(ConfigEntity entity) throws Exception;

	/**
	 * 描述：修改配置
	 * 
	 * @param id
	 * @return
	 * @return ConfigEntity
	 * @exception @createTime：2018年1月3日
	 * @author: wangzl
	 * @throws Exception
	 */
	public ConfigEntity edit(Long id) throws Exception;

	/**
	 * 描述：修改状态
	 * 
	 * @param id
	 * @param status
	 * @return void
	 * @exception @createTime：2018年1月3日
	 * @author: wangzl
	 * @throws Exception
	 */
	public void changeStatus(Long id, Integer status) throws Exception;
}
