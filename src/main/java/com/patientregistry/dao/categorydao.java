package com.patientregistry.dao;

import java.util.List;

import com.patientregistry.model.category;

public interface categorydao {
	
	public List<category> getall();
	public int insert(category ca);
	public int delete(int id);

}
