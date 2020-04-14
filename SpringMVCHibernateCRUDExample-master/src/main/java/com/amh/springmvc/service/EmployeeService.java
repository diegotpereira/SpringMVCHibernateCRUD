package com.amh.springmvc.service;

import java.util.List;

import com.amh.springmvc.model.Employee;
import com.amh.springmvc.model.User;

public interface EmployeeService {
	
	Employee findById(int id);

	Employee findBySSN(String ssn);

	void saveEmployee(Employee employee);

	void updateEmployee(Employee employee);

	void deleteEmployeeBySSN(Integer id);

	List<Employee> findAllEmployees();

	boolean isEmployeeSSOUnique(Integer id, String ssn);

}
