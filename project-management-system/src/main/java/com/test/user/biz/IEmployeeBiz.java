package com.test.user.biz;

import java.util.List;

import com.test.commom.exception.BizException;
import com.test.user.entity.EmployeeEntity;

public interface IEmployeeBiz {

    /**
     * 描述：校验登录
     * 
     * @param username
     * @param password
     * @return
     * @return EmployeeEntity
     * @exception
     * @createTime：2018年1月11日
     * @author: wangzl
     * @throws BizException
     */
    public EmployeeEntity login(String username, String password) throws BizException;

    /**
     * 描述：根据id获取信息
     * 
     * @param id
     * @return
     * @return EmployeeEntity
     * @exception
     * @createTime：2018年1月11日
     * @author: wangzl
     */
    public EmployeeEntity detail(Long id);

    /**
     * 描述：保存
     * 
     * @param employeeEntity
     * @return
     * @return int
     * @exception
     * @createTime：2018年1月11日
     * @author: wangzl
     */
    public int save(EmployeeEntity employeeEntity);

    /**
     * 描述：查询列表
     * 
     * @return
     * @return List<EmployeeEntity>
     * @exception
     * @createTime：2018年1月11日
     * @author: wangzl
     */
    public List<EmployeeEntity> list();
}
