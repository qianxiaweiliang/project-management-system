package com.test.user.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.commom.exception.BizException;
import com.test.user.biz.IEmployeeBiz;
import com.test.user.dao.EmployeeDao;
import com.test.user.entity.EmployeeEntity;

@Service
public class EmployeeBizImpl implements IEmployeeBiz {

    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public EmployeeEntity login(String username, String password) throws BizException {

        if (null == username || "".equals(username)) {
            throw new BizException("用户名不能为空！");
        }

        if (null == password || "".equals(password)) {
            throw new BizException("密码不能为空！");
        }

        EmployeeEntity employeeEntity = employeeDao.selectEmployeeByUsername(username);

        if (!password.equals(employeeEntity.getPassword())) {
            throw new BizException("密码不正确！");
        }

        return employeeEntity;
    }

    @Override
    public EmployeeEntity detail(Long id) {
        return null;
    }

    @Override
    public int save(EmployeeEntity employeeEntity) {
        return 0;
    }

    @Override
    public List<EmployeeEntity> list() {
        return null;
    }

}
