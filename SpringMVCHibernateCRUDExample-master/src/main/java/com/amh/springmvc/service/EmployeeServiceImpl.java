package com.amh.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.amh.springmvc.dao.EmployeeDao;

import com.amh.springmvc.model.Employee;
import com.amh.springmvc.model.User;

@Service("employeeService")
@Transactional
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private EmployeeDao dao;

	@Override
	public Employee findById(int id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public Employee findBySSN(String ssn) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveEmployee(Employee employee) {
		// TODO Auto-generated method stub
		dao.save(employee);
		
	}

	@Override
	public void deleteEmployeeBySSN(Integer id) {
		// TODO Auto-generated method stub
		dao.deleteEmployeeBySSN(id);
		
	}

	@Override
	public List<Employee> findAllEmployees() {
		// TODO Auto-generated method stub
		return dao.findAllEmployees();
	}

	@Override
	public boolean isEmployeeSSOUnique(Integer id, String ssn) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void updateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		Employee entity = dao.findById(employee.getId());
		if (entity != null) {
			entity.setId(employee.getId());
			entity.setName(employee.getName());
			entity.setJoining_date(employee.getJoining_date());
			entity.setSalary(employee.getSalary());
			entity.setSsn(employee.getSsn());
		}
		
	}

}
