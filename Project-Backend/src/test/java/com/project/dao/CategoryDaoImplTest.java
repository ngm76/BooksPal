package com.project.dao;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.configuration.DBConfiguration;
import com.project.models.Category;
import com.project.models.Product;

public class CategoryDaoImplTest {

	ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,CategoryDaoImpl.class);
	CategoryDao categoryDao=(CategoryDao)context.getBean("categoryDaoImpl");
	
	
	@Test
	public void testAddCategory() {
		Category category=new Category(); //New Product
        category.setCname("Fiction");
        category.setCdesc("Contains Fictional books");
        
        categoryDao.saveCategory(category);
        assertTrue(category.getCid() > 0);   
        System.out.println("Category added");
	}

	@Test
	public void testDeleteCategory() {
		Category category = categoryDao.getCategory(1);
		categoryDao.deleteCategory(category);
		assertTrue(category == null);
		System.out.println("Category deleted");
	}

	@Test
	public void testUpdateCategory() {
		Category category = categoryDao.getCategory(2);
		category.setCname("Biographies");
		category.setCdesc("Biographies of Indian Figures");
		categoryDao.updateCategory(category);
		assertTrue(category.getCname() == "Biographies");
		System.out.println("Category updated");
	}

	@Test
	public void testListCategory() {
		List<Category> categories = categoryDao.listCategory();
		assertTrue(categories.size() > 0);
	}

	
}
