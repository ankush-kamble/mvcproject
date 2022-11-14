package com.jbk.product.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping(value= "/")
	public String openloginPage(HttpSession session) {
		
		return "login";
	}

	@RequestMapping(value = "/openRegisterpage")
	public String openRegisterPage() {
		return "register";
	}
	
	@RequestMapping(value = "/mainPage")
	public String openHomePage() {
		return "home2";
	}
	
	
	
}
