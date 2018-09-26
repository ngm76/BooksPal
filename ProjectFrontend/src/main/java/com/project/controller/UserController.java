package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.dao.UserDao;
import com.project.models.Product;
import com.project.models.User;

@Controller
public class UserController {
	
	@Autowired
	UserDao userDao;
	
	public UserController() {
		System.out.println("User Controller initialized");
	}
	
	@RequestMapping(value="/admin/getallusers")
	public String getAllUsers(Model model) {
		List<User> users = userDao.getAllUsers();
		for(User u : users) {
		System.out.println(u);
		}
		model.addAttribute("userslist",users);
		return "listofusers";//logical view name
		//in listofproducts.jsp,access the model attribute "productsList"		
		
	}
	
	@RequestMapping(value="/getuserform")
	public String getProductForm(Model model) {
		User u = new User();
		model.addAttribute("user",u);
		return "register";
	}
	
	@RequestMapping(value="/adduser")
	public String addUser(@ModelAttribute(name="user")User user) {
		userDao.saveUser(user);
		return "redirect:/getallusers";
	}
	
	@RequestMapping(value="/admin/deleteuser/{username}")
	public String deleteUser(@PathVariable String username ) {
		User user = userDao.getUser(username);
		System.out.println(user);
		userDao.deleteUser(user);
		return "redirect:/admin/getallusers";
	}
	
	@RequestMapping(value="/admin/getuser/{username}")
	public String getUser(@PathVariable String username , Model model) {
		User user= userDao.getUser(username);
		System.out.println(user);
		model.addAttribute("userobj",user);
		return "viewuser";
	}
}
