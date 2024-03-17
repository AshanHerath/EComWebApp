package com.app.dao;

import com.app.entity.Employee;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Transactional
public class EmployeeDAO {

    @PersistenceContext
    private EntityManager entityManager;

    public void saveEmployee(Employee employee) {
        entityManager.persist(employee);
    }

    public Employee getEmployeeById(Long employeeId) {
        return entityManager.find(Employee.class, employeeId);
    }
}