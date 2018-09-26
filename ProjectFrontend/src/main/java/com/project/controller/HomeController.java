package com.project.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.dao.CartItemDao;
import com.project.dao.CategoryDao;
import com.project.dao.ProductDao;
import com.project.models.CartItem;
import com.project.models.Category;
import com.project.models.Product;

@Controller
public class HomeController {

	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private CartItemDao cartItemDao;

	public HomeController() {
		System.out.println("Home Controller initiated");
	}

	@RequestMapping("/")
	public String homePage(HttpSession session, @AuthenticationPrincipal Principal principal) {
		session.setAttribute("categories", categoryDao.getAllCategories());

		return "index";
	}

	@RequestMapping(value = "/index")
	public String getIndexPage(HttpSession session, @AuthenticationPrincipal Principal principal) {

		session.setAttribute("categories", categoryDao.getAllCategories());

		if (principal != null) {
			String email = principal.getName();
			List<CartItem> cartItems = cartItemDao.getCart(email);
			session.setAttribute("cartSize", cartItems.size());
		}
		return "index";
	}

	@RequestMapping(value = "/aboutus")
	public String aboutusPage() {
		return "aboutus";
	}

	@RequestMapping(value = "/contact")
	public String contactPage() {
		return "contact";
	}

	@RequestMapping(value = "/userhomepage")
	public String userhomepage() {
		return "userhomepage";
	}

}
