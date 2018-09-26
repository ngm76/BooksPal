package com.project.dao;


import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.project.configuration.DBConfiguration;
import com.project.models.Product;

import junit.framework.TestCase;

public class ProductDaoImplTest extends TestCase {
	
	
	ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class);
	ProductDao productDao=(ProductDao)context.getBean("productDaoImpl");
	   
	@Test
	@Ignore
	public void testSaveProduct() {
		Product product=new Product(); //New Product
        product.setProductname("Introduction to Spring framework"); //inserted in the column productname
        product.setProductdesc("2nd Edition"); //column productdesc
        product.setPrice(1000); //column price
        product.setQuantity(10); //column quantity
        
        productDao.saveProduct(product);
        assertTrue(product.getId()>0);   
        
	}
	
	public void testUpdateProduct() {
		Product product = productDao.getProduct(2);
		product.setPrice(2000);
		product.setQuantity(5);
		productDao.updateProduct(product);
		assertTrue(product.getPrice()==2000);
		assertTrue(product.getQuantity() == 5);
		
	}
	
	public void testDeleteProduct() {
		Product product = productDao.getProduct(3);
		productDao.deleteProduct(product);
		assertTrue(product==null);
		System.out.println("Product deleted ");
		
	}
	
	public void testGetAllProducts() {
		List<Product> products = productDao.getAllProducts();
		assertTrue(products.size() > 0);
		
		
	}
}
