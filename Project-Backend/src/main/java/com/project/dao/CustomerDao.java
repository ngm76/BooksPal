package com.project.dao;

import org.springframework.stereotype.Service;

import com.project.models.Customer;
@Service
public interface CustomerDao {
void registerCustomer(Customer customer);
boolean isEmailUnique(String email);
}

