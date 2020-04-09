package com.amh.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Repository;

import com.amh.springmvc.model.Employee;
import com.amh.springmvc.model.User;


@Repository("employeeDao")
public class EmployeeDaoImpl extends AbstractDao<Integer, Employee> implements EmployeeDao {

	@Override
	public Employee findById(int id) {
		Employee employee = getByKey(id);
		if (employee != null) {
//			Hibernate.initialize(employee.getEmployeeProfiles());
		}
		return employee;
	}

	@Override
	public Employee findBySSN(String ssn) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(Employee employee) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBySSN(String ssn) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Employee> findAllEmployees() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("Name"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);// To avoid
																		// duplicates.
		List<Employee> employees = (List<Employee>) criteria.list();

		return employees;
	}



}
