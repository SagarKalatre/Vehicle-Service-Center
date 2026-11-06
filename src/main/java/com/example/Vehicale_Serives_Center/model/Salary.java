package com.example.Vehicale_Serives_Center.model;

import java.time.LocalDate;

import org.springframework.context.annotation.Primary;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity 
@Data 
@NoArgsConstructor 
@AllArgsConstructor 
@Table (name="Salary")

public class Salary {
    // Salary 
	// 	1. Salary ID (Primary Key) 
	// 	Basic Salary Amount, Home Rent Allowance, Travel Allowance, Daily Allowance, OverTime, Bonus, Gross Salary 
	// 	Professional Tax, Provident Fund, Net Salary, Salary Credited Date 

    @Id 
    @GeneratedValue (strategy=GenerationType.IDENTITY)
    @Column 
    private int salaryId;
    private double basicSalaryAmount;
    private double homeRentAllowance;
    private double travelAllowance;
    private double dailyAllowance;
    private double overTime;
    private double Bonus;
    private double grossSalary;
    private double professionalTax;
    private double providentFund;
    private double netSalary;
    private LocalDate salaryCreditedData;
    
    @ManyToOne 
    @JoinColumn (name="employee_id")
    private Employee employee;

}
