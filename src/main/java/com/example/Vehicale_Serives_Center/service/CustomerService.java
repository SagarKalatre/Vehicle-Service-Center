package com.example.Vehicale_Serives_Center.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.Vehicale_Serives_Center.dao.CustomerRepository;
import com.example.Vehicale_Serives_Center.model.Customer;

@Service
@Transactional
public class CustomerService {

    @Autowired
    public CustomerRepository customerRepository;

    public void addCustomer(Customer customer) {
        customerRepository.save(customer);
    }

    public Optional<Customer> getCustomerById(int customerId) {
        return customerRepository.findById(customerId);
    }

    public void updateCustomer(Customer oldCustomer) {
        customerRepository.save(oldCustomer);
    }

    public void deleteCustomer(int customerId) {
        customerRepository.deleteById(customerId);
    }

    public Iterable<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }
}
