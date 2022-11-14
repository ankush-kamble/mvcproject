package com.jbk.product.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jbk.product.Entity.User;
import com.jbk.product.Service.UserService;
import com.jbk.product.Service.UserServiceImpl;

@Controller
public class UserController {

	@Autowired
	private UserServiceImpl service;

	@PostMapping(value = "/login")
	public String loginUser(@ModelAttribute User user, Model model, HttpSession session) {
		User user1 = service.loginUser(user);
		if (user1 != null) {
			System.err.println(user1);
			String username = user1.getUsername();
			String role = user1.getRole();
			session.setAttribute("username", username);
			session.setAttribute("role", role);
			model.addAttribute("username", username);
			return "home2";
		} else {
			System.err.println("No user");
			model.addAttribute("msg", "Invalid Credentials !");
			return "login";
		}
	}

	@GetMapping(value = "/registeruser")
	public String registerUser(@ModelAttribute User user, Model model) {
		boolean isSaved = service.saveUser(user);
		if (isSaved) {
			model.addAttribute("msg", "User Added !!");
			return "register";
		} else {
			model.addAttribute("msg", "User Not Added ,you missed adding some parameter or User Already Exists  !!");
			return "register";
		}

	}

	@GetMapping(value = "/getAllUser")
	public String getAllUser(Model model) {

		List<User> list = service.getAllUser();
		model.addAttribute("users", list);
		return "listofUser";

	}

	@RequestMapping(value = "/openRegisterPage")
	public String openRegisterPage() {
		return "register";
	}

	@GetMapping(value = "/deleteUser")
	public String deleteCustomer(@RequestParam String username, Model model) {
		boolean isDeleted = service.deleteCustomer(username);
		if (isDeleted) {
			// System.out.println("Deleted");
			List<User> list = service.getAllUser(); // fetch updated list
			model.addAttribute("users", list);
			return "listofUser";
		} else {
			List<User> list = service.getAllUser();
			model.addAttribute("users", list);
			// System.err.println("Deleted");
			return "listofUser";
		}
	}

	@GetMapping(value = "/getProfile")
	public String getProfile(@RequestParam String username, Model model) {
		User profile = service.getProfile(username);
		model.addAttribute("user", profile);
		return "updateprofile";
	}

	@PostMapping(value = "/updateUser")
	public String updateCustomer(@ModelAttribute User user, Model model) {

		boolean isUpdated = service.updateCustomer(user);
		if (isUpdated) {
			model.addAttribute("msg", "Updated !!");
			return "home2";
		} else {
			model.addAttribute("msg", " Not Updated !!");
			return "home2";
		}

	}
	
	@GetMapping(value = "/logout")
	public String logout(HttpSession session,Model model) {
		if (session != null) {
			session.invalidate();
			model.addAttribute("logout", "LogOut Successfully");
		}
		
		return "login";
	}
	
}
