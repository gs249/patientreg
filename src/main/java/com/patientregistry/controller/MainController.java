package com.patientregistry.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String index()
	{
		
		return "admin/index";
	}
	@RequestMapping("/register")
	public String second()
	{
		
		return "admin/Register";
	}
	

}
