package com.example.Vehicale_Serives_Center.model;

import java.util.List;

import org.springframework.context.annotation.Primary;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity 
@Data 
@NoArgsConstructor 
@AllArgsConstructor 
@Table (name="Department")

public class Department {
    // 11. Department 
	// 	1. Department ID (Primary Key) 
	// 	Department Name 
    @Id 
    @GeneratedValue (strategy=GenerationType.IDENTITY)
    @Column 
    private int departmentId;
    private String name;

    @OneToMany (mappedBy="department")
    private List<Employee> employee;
}
