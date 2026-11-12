package com.example.Vehicale_Serives_Center;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class DemoProjectApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(DemoProjectApplication.class, args);
        System.out.println("Application Starts........");
    }
}