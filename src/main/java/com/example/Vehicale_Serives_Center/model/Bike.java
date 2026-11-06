package com.example.Vehicale_Serives_Center.model;

import jakarta.persistence.Entity;
import jakarta.persistence.PrimaryKeyJoinColumn;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity 
@Data 
@NoArgsConstructor 
@AllArgsConstructor 
@Table(name="Bike")
@PrimaryKeyJoinColumn(name="vehicleId")

public class Bike extends Vehicle {
    // 8. Bike (Sub class of Vehicle)
	// 	Bike Company Name 
	// 	Bike Model Name, Bike Type, Bike Type 
    private String bikeCompanyName;
    private String bikeModelName;
    private String bikeType;      // Cruiser, Sports, Adventure
    private String bikefuelType;
}

