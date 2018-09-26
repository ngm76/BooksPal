package com.project.Project_Backend;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.project.configuration.DBConfiguration;
import com.project.dao.CartItemDaoImpl;
import com.project.dao.CategoryDao;
import com.project.dao.CategoryDaoImpl;
import com.project.dao.CustomerDaoImpl;
import com.project.dao.ProductDao;
import com.project.dao.ProductDaoImpl;
import com.project.dao.UserDaoImpl;
import com.project.models.Category;
import com.project.models.Product;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
      ApplicationContext context = new AnnotationConfigApplicationContext(DBConfiguration.class,ProductDaoImpl.class,CustomerDaoImpl.class,CategoryDaoImpl.class,CartItemDaoImpl.class,UserDaoImpl.class);
      ProductDao productDao = (ProductDao)context.getBean("productDaoImpl");
       CategoryDao categoryDao = (CategoryDao)context.getBean("categoryDaoImpl");
    	
        
        Product product=new Product(); //New Product
        product.setProductname("Angular"); //inserted in the column productname
        product.setProductdesc("2nd Edition"); //column productdesc
        product.setPrice(300); //column price
        product.setQuantity(10); //column quantity
        
        productDao.saveProduct(product);
        
        
        List<Product> products = productDao.getAllProducts();
        for(Product p : products) {
        	System.out.println(p);
        }
        
        
       /* Category category = new Category();
		category.setCategoryName("Fiction");
		categoryDao.saveCategory(category);*/
		
    }
}
