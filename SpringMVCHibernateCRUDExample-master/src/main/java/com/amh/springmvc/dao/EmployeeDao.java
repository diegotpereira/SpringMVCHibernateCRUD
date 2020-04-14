package com.amh.springmvc.dao;

import java.util.List;

import com.amh.springmvc.model.Employee;


public interface EmployeeDao {
	
	Employee findById(int id);
    
	Employee findBySSN(String ssn);
     
    void save(Employee employee);
     
    void deleteEmployeeBySSN(Integer id);
     
    List<Employee> findAllEmployees();

}
