package com.project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	public LoginController() {
		System.out.println("Login Controller initiated");
	}

	/*
	 * @RequestMapping(method = RequestMethod.POST) public void
	 * doPost(HttpServletRequest request , HttpServletResponse response ) throws
	 * ServletException, IOException{ String uname =
	 * request.getParameter("username"); String upassword =
	 * request.getParameter("password");
	 * 
	 * if(uname.equals("admin") && (upassword.equals("admin"))) {
	 * System.out.println("username and password are correct");
	 * response.sendRedirect("admin"); }else { response.sendRedirect("error");
	 * 
	 * 
	 * } }
	 */

/*	@RequestMapping(value = "/login")
	public String loginProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		 ModelAndView mav = null;

		System.out.println("inside validation method");
		String uname = request.getParameter("j_username");
		String upassword = request.getParameter("j_password");
		System.out.println(uname);
		System.out.println(upassword);
		while (uname != null && upassword != null) {
			if (uname.equals("admin") && (upassword.equals("admin"))) {
				System.out.println("username and password are correct");
				return "redirect:/admin";
				
			}			
				return "redirect:/userhomepage";
			
		}
		return "login";
		
	}
*/
	/*
	 * if (user != null && user.getUsername() != null && user.getPassword() != null)
	 * { if (user.getUsername().equals("admin") &&
	 * user.getPassword().equals("admin")) { //model.addAttribute("msg",
	 * user.getUsername()); //mav = new ModelAndView("admin");
	 * System.out.println("username and password is correct"); return"admin"; } else
	 * { //model.addAttribute("error", "Invalid Details"); //mav = new
	 * ModelAndView("login");
	 * System.out.println("username and password is incorrect"); return "login"; } }
	 * else { //model.addAttribute("error", "Please enter Details"); //mav = new
	 * ModelAndView("login"); System.out.println("Please enter Details"); return
	 * "login"; }
	 */

/*	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Inside Registeration method");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		while (username != null && password != null && confirmpassword != null) {
			if (password.equals(confirmpassword)) {
				System.out.println("Password and ConfirmPassword match");
				return "";
			} else {
				System.out.println("Password and ConfirmPassword donot martch");
				return "register";
			}

		}
		return "register";
	}*/
	
	/*@RequestMapping(value="/login")
	public String login() {
		return "login";
	}*/
	
	 @RequestMapping(value="/login") 
	 public String loginPage() {
	 System.out.println("Login Page"); 
	 return "login";
	 }
	

	@RequestMapping(value = "/admin")
	public String adminPage() {
		return "admin";
	}

	@RequestMapping(value="/loginerror")
	public String loginFailed(Model model) {
		model.addAttribute("error","Invalid Credentials");
		return "login";
	}

	@RequestMapping(value="/logout")
	public String logout(Model model) {
		model.addAttribute("msg", "Loggedout successfully");
		return "login";
		
	}
	

}
