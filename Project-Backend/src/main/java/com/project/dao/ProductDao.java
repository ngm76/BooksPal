package com.project.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.models.Product;

@Service
public interface ProductDao {
	Product saveProduct(Product product);
	void deleteProduct(Product product);
	Product updateProduct(Product product);
	Product getProduct(int id);
	List<Product> getAllProducts();
}
