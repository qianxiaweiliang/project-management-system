package com.test.user.dao;

import com.test.user.entity.EmployeeEntity;

public interface EmployeeDao {

    public EmployeeEntity selectEmployeeByUsername(String username);
}
