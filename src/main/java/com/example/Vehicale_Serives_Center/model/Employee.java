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

}
