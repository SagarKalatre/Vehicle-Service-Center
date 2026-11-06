
package com.example.Vehicale_Serives_Center.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

// import com.example.Vehicale_Serives_Center.dao.EmployeeRepository;
import com.example.Vehicale_Serives_Center.model.Employee;
import com.example.Vehicale_Serives_Center.service.EmployeeService;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private EmployeeService employeeService;

    // Home Page
    // @GetMapping("/")
    // public String homePage() {
    //     return "admin/dashboard";
    // }

    // Add Employee

    @GetMapping("/add-employee")
    public String addEmployeePage() {
        return "admin/addEmployee";
    }

    // Old Add Employee Method
    // @PostMapping("/add-employee")
    // public String addEmployee(@ModelAttribute Employee employee) {
    //     employeeService.addEmployee(employee);
    //     return "redirect:/admin/add-employee";
    // }

    @PostMapping("/add-employee")
    public String addEmployee(@ModelAttribute Employee employee) {

        // Debugging
        // System.out.println("First Name: " + employee.getFirstname());
        // System.out.println("Middle Name: " + employee.getMiddlename());
        // System.out.println("Last Name: " + employee.getLastname());
        // System.out.println("Phone 1: " + employee.getPhone_1());
        // System.out.println("Phone 2: " + employee.getPhone_2());
        // System.out.println("Email: " + employee.getEmailId());
        // System.out.println("DOB: " + employee.getDOB());
        // System.out.println("Gender: " + employee.getGender());

        employeeService.addEmployee(employee);

        return "redirect:/admin/add-employee";
    }

    // Update Employee

    @GetMapping("/update-employee")
    public String updateEmployeePage(@RequestParam int employeeId, Model model) {

        Optional<Employee> employee = employeeService.getEmployeeById(employeeId);

        if (employee.isPresent()) {
            model.addAttribute("employee", employee.get());
            return "admin/updateEmployee";
        }

        return "redirect:/admin/fetch-employee";
    }

    @PostMapping("/update-employee")
    public String updateEmployee(@ModelAttribute Employee employee) {

        Optional<Employee> existingEmployee =
                employeeService.getEmployeeById(employee.getEmployeeId());

        if (existingEmployee.isPresent()) {

            Employee oldEmployee = existingEmployee.get();

            oldEmployee.setFirstname(employee.getFirstname());
            oldEmployee.setMiddlename(employee.getMiddlename());
            oldEmployee.setLastname(employee.getLastname());
            oldEmployee.setPhone_1(employee.getPhone_1());
            oldEmployee.setPhone_2(employee.getPhone_2());
            oldEmployee.setEmailId(employee.getEmailId());
            oldEmployee.setDOB(employee.getDOB());
            oldEmployee.setGender(employee.getGender());

            employeeService.updateEmployee(oldEmployee);
        }

        return "redirect:/admin/fetch-employee";
    }

    // Fetch Employee

    @GetMapping("/fetch-employee")
    public String fetchEmployeePage() {
        return "admin/fetchEmployee";
    }

    @PostMapping("/fetch-employee")
    public String fetchEmployee(@RequestParam int employeeId, Model model) {

        Optional<Employee> employee = employeeService.getEmployeeById(employeeId);

        if (employee.isPresent()) {
            model.addAttribute("employee", employee.get());
            return "admin/employeeDetails";
        }

        model.addAttribute("message", "Employee Not Found..!");

        return "admin/fetchEmployee";
    }

    // Delete Employee

    @GetMapping("/delete-employee")
    public String deleteEmployeePage() {
        return "admin/deleteEmployee";
    }

    @PostMapping("/delete-employee")
    public String deleteEmployee(@RequestParam int employeeId, Model model) {

        if (employeeService.getEmployeeById(employeeId).isPresent()) {

            employeeService.deleteEmployee(employeeId);

            model.addAttribute("message", "Employee Deleted Successfully..!");

        } else {

            model.addAttribute("message", "Employee Not Found..!");
        }

        return "admin/deleteEmployee";
    }
}
