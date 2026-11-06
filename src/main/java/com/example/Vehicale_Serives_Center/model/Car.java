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
@Table(name = "car")
@PrimaryKeyJoinColumn(name = "vehicleId")
public class Car extends Vehicle {
    // 7. Car (Sub class of Vehicle)
    // 1. Car Company Name
    // Car Model Name, Fuel Type
    private String carCompanyName;
    private String carModelName;
    private String carFuelType;

}
