package com.test.user.biz.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.test.user.biz.IEmployeeBiz;
import com.test.user.entity.EmployeeEntity;

@Service
public class EmployeeBizImpl implements IEmployeeBiz {

	// @Autowired
	// private EmployeeDao employeeDao;

	@Override
	public EmployeeEntity login(String username, String password) {
		return null;
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
