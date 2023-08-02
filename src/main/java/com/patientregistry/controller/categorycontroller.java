package com.patientregistry.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;


import com.google.gson.Gson;
import com.patientregistry.dao.categorydao;
import com.patientregistry.model.category;

@RestController
public class categorycontroller {
	
	@Autowired
	categorydao cdao;
	
	@GetMapping("getcategory")
	public List<category> getall()
	{
		List<category> res =  cdao.getall();
		return res; 
		
	}
   
	@PostMapping("insertcategorydata")
	public int insertcategory(@RequestParam(value = "categoryStr") String categoryStr, 
			HttpServletRequest request) throws IOException {
		System.out.println("enter in insertcategory");
		 Gson gson = new Gson(); 
         category model = gson.fromJson(categoryStr, category.class); 
         System.out.println(model);
         int res=cdao.insert(model);
		return  res;
	}
	
	@DeleteMapping("deletecategory")
	public int delete(int id)
	{
		int res=cdao.delete(id);
		return res;
	}
}
