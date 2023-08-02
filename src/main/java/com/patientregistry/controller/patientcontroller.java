package com.patientregistry.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.patientregistry.dao.patientdao;

import com.patientregistry.model.patient;

@RestController
public class patientcontroller {
	
	@Autowired
	patientdao pdao;
	
	@GetMapping("getpatient")
	public List<patient> getall()
	{
		List<patient> res =  pdao.getpatient();
		return res; 
		
	}
	
	@PostMapping("insertpatientdata")
	public int insertcategory(@RequestParam(value = "patientStr") String patientStr, 
			HttpServletRequest request) throws IOException {
		System.out.println("enter in insertpatient");
		int resp = 0;
		 Gson gson = new Gson(); 
		 patient model = gson.fromJson(patientStr, patient.class);
		 int random = new Random().nextInt(900000) + 100000;
         System.out.println(model);
         System.out.println(random);
          pdao.insertinuser(model);
         int  userid =pdao.getLastuseridNumber();
         
        System.out.println("last user id:"+userid);
        if(userid != 0)
        {
        	model.setUser_id(userid);
        	resp = pdao.insertinpatient(model);
        }
        
		return  resp;
	}
	
	

}
