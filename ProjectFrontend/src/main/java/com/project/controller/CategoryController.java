package com.project.controller;

	import java.util.List;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;

import com.project.models.Category;
import com.project.models.Product;
import com.project.dao.CategoryDao;

	@Controller
	public class CategoryController {
		@Autowired
		private CategoryDao categoryDao;
		
		public CategoryController(){
			System.out.println("Category Controller initialized");
		}
		
		@RequestMapping(value="/admin/deletecategory/{id}")
		public String deleteCategory(@PathVariable int id) {
			Category c = categoryDao.getCategory(id);
			categoryDao.deleteCategory(c);
			return "redirect:/admin/getallcategories";
		}
		
		@RequestMapping(value="/admin/getcategory/{id}")
		public String getCategory(@PathVariable int id , Model model) {
			Category c= categoryDao.getCategory(id);
			model.addAttribute("categoryobj",c);
			return "viewcategory";
		}
		
		@RequestMapping(value="/admin/getallcategories")
		public String getAllCategories(Model model) {
			List<Category> categories = categoryDao.getAllCategories();
			System.out.println("in category controller");
			for(Category c : categories) {
			System.out.println(c);
			}
			model.addAttribute("categorieslist",categories);
			
			return "listofcategories";//logical view name
			//in listofproducts.jsp,access the model attribute "productsList"		
			
		}
		
		@RequestMapping(value="/admin/getcategoryform")
		public String getCategoryForm(Model model) {
			Category c = new Category();
			model.addAttribute("category",c);
			return "categoryform";
		}
		
		@RequestMapping(value="/admin/addcategory")
		public String addCategory(@ModelAttribute(name="category")Category category) {
			categoryDao.saveCategory(category);
			return "redirect:/admin/getallcategories";
		}
		
		@RequestMapping(value="/admin/editcategory/{id}")
		public String editCategory(@PathVariable int id,Model model) {
			Category category = categoryDao.getCategory(id);
			model.addAttribute("category",category);
			categoryDao.updateCategory(category);
			return "editcategory";
		}

		@RequestMapping(value="/admin/updatecategory")
		public String updateCategory(@ModelAttribute(name="category")Category category) {
			categoryDao.updateCategory(category);
			return "redirect:/admin/getallcategories";
		}
	

}
