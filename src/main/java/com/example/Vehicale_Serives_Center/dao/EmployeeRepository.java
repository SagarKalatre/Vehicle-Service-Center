package com.example.Vehicale_Serives_Center.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Vehicale_Serives_Center.model.Employee;

@Repository 
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
    
}
