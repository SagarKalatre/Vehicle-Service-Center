package com.example.Vehicale_Serives_Center.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Vehicale_Serives_Center.dao.EmployeeRepository;
import com.example.Vehicale_Serives_Center.model.Employee;

import jakarta.transaction.Transactional;

@Service 
@Transactional
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository; 
    
    // public String addEmployee(Employee employee) {
    //     return employeeRepository.save(employee);
    // }
    public Employee addEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    public Optional<Employee> getEmployeeById(int employeeId) {
        // throw new UnsupportedOperationException("Not supported yet.");
        return employeeRepository.findById(employeeId);
    }

    public void deleteEmployee(int employeeId) {
        // throw new UnsupportedOperationException("Not supported yet.");
        employeeRepository.deleteById(employeeId);

    }

    public Employee updateEmployee(Employee employee) {
        // throw new UnsupportedOperationException("Not supported yet.");
        return employeeRepository.save(employee);
    }
}
