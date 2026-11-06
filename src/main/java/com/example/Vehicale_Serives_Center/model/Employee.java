package com.example.Vehicale_Serives_Center.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity 
@Data
@NoArgsConstructor
@AllArgsConstructor 
@Table (name="Employee")

public class Employee {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column 
    private int employeeId;
    private String firstname;
    private String middlename;
    private String lastname;
    private String phone_1;
    private String phone_2;
    private String emailId;
    private String DOB;
    private String gender;

    @OneToOne 
    @JoinColumn(name = "login_id", unique = true)
    private Login login;

    @OneToMany (mappedBy="employee")
    private List<Address> addresses;

    @OneToMany (mappedBy="employee")
    private List<Salary> salary;

    @ManyToOne 
    @JoinColumn (name="department_id")
    private Department department;

    // public int getEmployeeId() {
    //     return employeeId;
    // }

    // public void setEmployeeId(int employeeId) {
    //     this.employeeId = employeeId;
    // }

    // public String getFirstname() {
    //     return firstname;
    // }

    // public void setFirstname(String firstname) {
    //     this.firstname = firstname;
    // }

    // public String getMiddlename() {
    //     return middlename;
    // }

    // public void setMiddlename(String middlename) {
    //     this.middlename = middlename;
    // }

    // public String getLastname() {
    //     return lastname;
    // }

    // public void setLastname(String lastname) {
    //     this.lastname = lastname;
    // }

    // public String getPhone_1() {
    //     return phone_1;
    // }

    // public void setPhone_1(String phone_1) {
    //     this.phone_1 = phone_1;
    // }

    // public String getPhone_2() {
    //     return phone_2;
    // }

    // public void setPhone_2(String phone_2) {
    //     this.phone_2 = phone_2;
    // }

    // public String getEmailId() {
    //     return emailId;
    // }

    // public void setEmailId(String emailId) {
    //     this.emailId = emailId;
    // }

    // public String getDOB() {
    //     return DOB;
    // }

    // public void setDOB(String DOB) {
    //     this.DOB = DOB;
    // }

    // public String getGender() {
    //     return gender;
    // }

    // public void setGender(String gender) {
    //     this.gender = gender;
    // }

    // public Login getLogin() {
    //     return login;
    // }

    // public void setLogin(Login login) {
    //     this.login = login;
    // }

    // public List<Address> getAddresses() {
    //     return addresses;
    // }

    // public void setAddresses(List<Address> addresses) {
    //     this.addresses = addresses;
    // }

    // public List<Salary> getSalary() {
    //     return salary;
    // }

    // public void setSalary(List<Salary> salary) {
    //     this.salary = salary;
    // }

    // public Department getDepartment() {
    //     return department;
    // }

    // public void setDepartment(Department department) {
    //     this.department = department;
    // }


}
