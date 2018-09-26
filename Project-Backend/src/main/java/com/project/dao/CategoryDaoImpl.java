package com.project.dao;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.models.Category;
import com.project.models.Product;


@Repository 
@Transactional
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveCategory(Category category) {
		//get the session object from session factory
		Session session = sessionFactory.getCurrentSession();
		System.out.println("Id of the category before persisting "+category.getCid());
		session.save(category);
		System.out.println("Id of the product after persisting "+category.getCid());
		
	}
	

	public void deleteCategory(Category category) {
		Session session = sessionFactory.getCurrentSession();
		if(category != null) {
			System.out.println("Deleting Category");
			session.delete(category);
		}
		
	}

	public void updateCategory(Category category) {
		Session session = sessionFactory.getCurrentSession();
		session.update(category);
	}

	public List<Category> listCategory() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Category");
		List<Category> categories = query.list();
		return categories;
	}

	public Category getCategory(int categoryId) {
		Session session = sessionFactory.getCurrentSession();
		Category category = (Category)session.get(Category.class, categoryId);
		return category;
	}


	public List<Category> getAllCategories() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Category");
		List<Category> categories = query.list();
		return categories;
	}

}
