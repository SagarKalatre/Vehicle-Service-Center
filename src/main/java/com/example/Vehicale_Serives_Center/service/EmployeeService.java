// package com.example.Vehicale_Serives_Center.service;

// import java.util.Optional;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.stereotype.Service;

// import com.example.Vehicale_Serives_Center.dao.EmployeeRepository;
// import com.example.Vehicale_Serives_Center.model.Employee;

// import jakarta.transaction.Transactional;

// @Service 
// @Transactional
// public class EmployeeService {

//     @Autowired
//     private EmployeeRepository employeeRepository; 
    
//     // public String addEmployee(Employee employee) {
//     //     return employeeRepository.save(employee);
//     // }
//     public Employee addEmployee(Employee employee) {
//         return employeeRepository.save(employee);
//     }

//     public Optional<Employee> getEmployeeById(int employeeId) {
//         // throw new UnsupportedOperationException("Not supported yet.");
//         return employeeRepository.findById(employeeId);
//     }

//     public void deleteEmployee(int employeeId) {
//         // throw new UnsupportedOperationException("Not supported yet.");
//         employeeRepository.deleteById(employeeId);

//     }

//     public Employee updateEmployee(Employee employee) {
//         // throw new UnsupportedOperationException("Not supported yet.");
//         return employeeRepository.save(employee);
//     }
// }


package com.example.Vehicale_Serives_Center.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.Vehicale_Serives_Center.dao.EmployeeRepository;
import com.example.Vehicale_Serives_Center.dao.LoginRepository;
import com.example.Vehicale_Serives_Center.model.Employee;
import com.example.Vehicale_Serives_Center.model.Login;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    @Autowired
    private LoginRepository loginRepository;

    @Autowired
    private LoginService loginService;

    public Employee addEmployee(Employee employee) {

        Login login = employee.getLogin();

        // ADDED: Check whether username already exists
        if (loginRepository.findByUsername(login.getUsername()).isPresent()) {
            throw new IllegalArgumentException("Username already exists!");
        }

        // ADDED: Set employee login type
        login.setLoginType("Employee");

        // ADDED: Encrypt employee password
        login.setPassword(loginService.encryptPassword(login.getPassword()));

        loginRepository.save(login);
        employee.setLogin(login);

        return employeeRepository.save(employee);
    }

    public Optional<Employee> getEmployeeById(int employeeId) {
        return employeeRepository.findById(employeeId);
    }

    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll(
            Sort.by(Sort.Direction.DESC, "employeeId")
        );
    }

    public void deleteEmployee(int employeeId) {
        employeeRepository.deleteById(employeeId);
    }

    public Employee updateEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }
}