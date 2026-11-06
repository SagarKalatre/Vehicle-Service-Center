package com.example.Vehicale_Serives_Center.model;

import java.util.List;

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
@Table (name="ServiceJobCard")

public class ServiceJobCard {
    // 9. Service Job Card 
// 		1. Service Job Card ID (Primary Key) 
// 		Service Start Date, Service End Date, Contact Number
    @Id 
    @GeneratedValue (strategy=GenerationType.IDENTITY)
    @Column 
    private int serviceJobCardId;
    private String serviceStartDate;
    private String serviceEndDate;
    private String contactNumber;

    @ManyToOne 
    @JoinColumn (name="vehicle_id")
    private Vehicle vehicle;
}
