package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.models.Product;

//tells the spring container to create a bean of type ProductDao

@Repository 
@Transactional
public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SessionFactory sessionFactory;
	/**
   * Insert product details into a product table using hibernate framework
   * 1. Get session object from sessionfactory bean
   * 2. using method, insert the data
   */
	
	
	public Product saveProduct(Product product) {
		//get the session object from session factory
		Session session = sessionFactory.getCurrentSession();
		System.out.println("Id of the product before persisting "+product.getId());
		session.save(product);
		System.out.println("Id of the product after persisting "+product.getId());
		return product;
	}
	
	public void deleteProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("Deleting the product");
		if(product != null) {
			session.delete(product);
		}
	}
	
	public Product updateProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("Updating the product");
		session.update(product);
		return product;
	}

	public Product getProduct(int id) {
		Session session = sessionFactory.getCurrentSession();
		Product product = (Product) session.get(Product.class,id);
		return product;
	}

	public List<Product> getAllProducts() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Product");
		List<Product> products = query.list();
		return products;
	}

	

}