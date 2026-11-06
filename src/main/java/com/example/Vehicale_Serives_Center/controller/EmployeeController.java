package com.example.Vehicale_Serives_Center.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Vehicale_Serives_Center.model.Customer;
import com.example.Vehicale_Serives_Center.model.Employee;
import com.example.Vehicale_Serives_Center.model.Vehicle;
import com.example.Vehicale_Serives_Center.model.ServiceJobCard;
import com.example.Vehicale_Serives_Center.service.CustomerService;
import com.example.Vehicale_Serives_Center.service.EmployeeService;
import com.example.Vehicale_Serives_Center.service.ServiceJobCardService;
import com.example.Vehicale_Serives_Center.service.VehicleService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private VehicleService vehicleService;

    @Autowired
    private ServiceJobCardService serviceJobCardService;

    @GetMapping("/add-customer")
    public String addCustomerPage() {
        return "employee/addCustomer";
    }

    @PostMapping("/add-customer")
    public String addCustomer(@ModelAttribute Customer customer) {
        customerService.addCustomer(customer);
        return "redirect:/admin/add-employee";
    }

    @GetMapping("/update-customer")
    public String updateCustomerPage(@RequestParam int customerId, Model model) {
        Optional<Customer> customer = customerService.getCustomerById(customerId);

        if (customer.isPresent()) {
            model.addAttribute("customer", customer.get());
            return "employee/updateCustomer";
        }

        return "redirect:/employee/fetch-customer";
    }

    @PostMapping("/update-customer")
    public String updateCustomer(@ModelAttribute Customer customer) {
        Optional<Customer> existingCustomer = customerService.getCustomerById(customer.getCustomerId());

        if (existingCustomer.isPresent()) {
            Customer oldCustomer = existingCustomer.get();

            oldCustomer.setFirstname(customer.getFirstname());
            oldCustomer.setMiddlename(customer.getMiddlename());
            oldCustomer.setLastname(customer.getLastname());
            oldCustomer.setPhone_1(customer.getPhone_1());
            oldCustomer.setPhone_2(customer.getPhone_2());
            oldCustomer.setEmailId(customer.getEmailId());
            oldCustomer.setDOB(customer.getDOB());
            oldCustomer.setGender(customer.getGender());

            customerService.updateCustomer(oldCustomer);
        }

        return "redirect:/employee/fetch-customer";
    }

    // fetch
    @GetMapping("/fetch-customer")
    public String fetchCustomerPage() {
        return "employee/fetchCustomer";
    }

    @PostMapping("/fetch-customer")
    public String fetchCustomer(@RequestParam int customerId, Model model) {
        Optional<Customer> customer = customerService.getCustomerById(customerId);

        if (customer.isPresent()) {
            model.addAttribute("customer", customer.get());
            return "employee/customerDetails";
        }
        model.addAttribute("message", "Customer Not Found..!");
        return "employee/fetchCustomer";
    }

    // delete
    @GetMapping("/delete-customer")
    public String deleteCustomerPage() {
        return "employee/deletecustomer";
    }

    @PostMapping("/delete-customer")
    public String deleteCustomer(@RequestParam int customerId, Model model) {
        if (customerService.getCustomerById(customerId).isPresent()) {
            customerService.deleteCustomer(customerId);
            model.addAttribute("message", "Customer Delete Successfully..!");
        } else {
            model.addAttribute("message", "Customer Not Found..!");
        }

        return "employee/deleteCustomer";
    }

    // Add Vehicle

    @GetMapping("/add-vehicle")
    public String addVehiclePage() {
        return "employee/addVehicle";
    }

    // @PostMapping("/add-vehicle")
    // public String addVehicle(@ModelAttribute Vehicle vehicle,
    // @RequestParam("customer.customerId") int customerId) {

    // Optional<Customer> customer = customerService.getCustomerById(customerId);

    // if (customer.isPresent()) {
    // vehicle.setCustomer(customer.get());
    // vehicleService.addVehicle(vehicle);
    // return "redirect:/employee/fetch-vehicle";
    // }

    // return "employee/addVehicle";
    // }

    @PostMapping("/add-vehicle")
    public String addVehicle(@ModelAttribute Vehicle vehicle,
            @RequestParam("customer.customerId") int customerId) {

        System.out.println("Customer ID: " + customerId);

        Optional<Customer> customer = customerService.getCustomerById(customerId);

        System.out.println("Customer Found: " + customer.isPresent());

        if (customer.isPresent()) {
            vehicle.setCustomer(customer.get());
            vehicleService.addVehicle(vehicle);
            return "redirect:/employee/fetch-vehicle";
        }

        return "employee/addVehicle";
    }

    // Fetch Vehicle

    @GetMapping("/fetch-vehicle")
    public String fetchVehiclePage() {
        return "employee/fetchVehicle";
    }

    @PostMapping("/fetch-vehicle")
    public String fetchVehicle(@RequestParam int vehicleId, Model model) {

        Optional<Vehicle> vehicle = vehicleService.getVehicleById(vehicleId);

        if (vehicle.isPresent()) {
            model.addAttribute("vehicle", vehicle.get());
            return "employee/vehicleDetails";
        }

        model.addAttribute("message", "Vehicle Not Found..!");
        return "employee/fetchVehicle";
    }

    // Update Vehicle Page
    @GetMapping("/update-vehicle")
    public String updateVehiclePage(@RequestParam int vehicleId, Model model) {

        Optional<Vehicle> vehicle = vehicleService.getVehicleById(vehicleId);

        if (vehicle.isPresent()) {
            model.addAttribute("vehicle", vehicle.get());
            return "employee/updateVehicle";
        }

        return "redirect:/employee/fetch-vehicle";
    }

    // Update Vehicle
    @PostMapping("/update-vehicle")
    public String updateVehicle(@ModelAttribute Vehicle vehicle,
            @RequestParam("customer.customerId") int customerId) {

        Optional<Customer> customer = customerService.getCustomerById(customerId);

        if (customer.isPresent()) {
            vehicle.setCustomer(customer.get());
            vehicleService.updateVehicle(vehicle);
        }

        return "redirect:/employee/fetch-vehicle";
    }

    // Add Service Job Card

    @GetMapping("/add-service")
    public String addServicePage() {
        return "employee/addService";
    }

    @PostMapping("/add-service")
    public String addService(@ModelAttribute ServiceJobCard service,
            @RequestParam("vehicle.vehicleId") int vehicleId) {

        Optional<Vehicle> vehicle = vehicleService.getVehicleById(vehicleId);

        if (vehicle.isPresent()) {
            service.setVehicle(vehicle.get());
            serviceJobCardService.addService(service);
            return "redirect:/employee/fetch-service";
        }

        return "employee/addService";
    }

    // Fetch Service Job Card

    @GetMapping("/fetch-service")
    public String fetchServicePage() {
        return "employee/fetchService";
    }

    @PostMapping("/fetch-service")
    public String fetchService(@RequestParam int serviceJobCardId, Model model) {

        Optional<ServiceJobCard> service = serviceJobCardService.getServiceById(serviceJobCardId);

        if (service.isPresent()) {
            model.addAttribute("service", service.get());
            return "employee/serviceDetails";
        }

        model.addAttribute("message", "Service Job Card Not Found..!");
        return "employee/fetchService";
    }

    // Update Service Job Card Page

    @GetMapping("/update-service")
    public String updateServicePage(@RequestParam int serviceJobCardId, Model model) {

        Optional<ServiceJobCard> service = serviceJobCardService.getServiceById(serviceJobCardId);

        if (service.isPresent()) {
            model.addAttribute("service", service.get());
            return "employee/updateService";
        }

        return "redirect:/employee/fetch-service";
    }

    // Update Service Job Card

    @PostMapping("/update-service")
    public String updateService(@ModelAttribute ServiceJobCard service,
            @RequestParam("vehicle.vehicleId") int vehicleId) {

        Optional<ServiceJobCard> vehicleServiceJob = serviceJobCardService
                .getServiceById(service.getServiceJobCardId());

        Optional<Vehicle> vehicle = vehicleService.getVehicleById(vehicleId);

        if (vehicleServiceJob.isPresent() && vehicle.isPresent()) {

            ServiceJobCard oldService = vehicleServiceJob.get();

            oldService.setServiceStartDate(service.getServiceStartDate());
            oldService.setServiceEndDate(service.getServiceEndDate());
            oldService.setContactNumber(service.getContactNumber());
            oldService.setVehicle(vehicle.get());

            serviceJobCardService.updateService(oldService);
        }

        return "redirect:/employee/fetch-service";
    }

}
