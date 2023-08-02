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
	@RequestMapping("/dashboard")
	public String deshboard()
	{
		
		return "admin/dashboard";
	}
	@RequestMapping("/category")
	public String catrgory()
	{
		
		return "admin/category";
	}
	@RequestMapping("/addcategory")
	public String addcatrgory()
	{
		
		return "admin/add category";
	}
	
	@RequestMapping("/patient")
	public String patient()
	{
		
		return "admin/patient";
	}
	@RequestMapping("/addpatient")
	public String addpatient()
	{
		
		return "admin/addpatient";
	}

}
