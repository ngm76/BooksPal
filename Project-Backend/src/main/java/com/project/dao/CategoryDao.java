package com.project.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.models.Category;

@Service
public interface CategoryDao {
	
	public void saveCategory(Category category);
	public void deleteCategory(Category category);
	public void updateCategory(Category category);
	public List<Category> listCategory();
	public Category getCategory(int categoryId);
	public List<Category> getAllCategories();
	

}
