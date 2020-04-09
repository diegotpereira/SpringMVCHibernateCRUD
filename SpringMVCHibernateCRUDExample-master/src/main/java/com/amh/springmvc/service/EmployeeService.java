package com.amh.springmvc.service;

import java.util.List;

import com.amh.springmvc.model.Employee;
import com.amh.springmvc.model.User;

public interface EmployeeService {
	
	Employee findById(int id);

	Employee findBySSO(String ssn);

	void saveEmployee(Employee user);

	void updateEmployee(Employee employee);

	void deleteEmployeeBySSO(String ssn);

	List<Employee> findAllEmployees();

	boolean isEmployeeSSOUnique(Integer id, String ssn);

}
