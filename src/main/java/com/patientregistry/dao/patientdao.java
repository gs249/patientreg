package com.patientregistry.dao;

import java.util.List;

import com.patientregistry.model.patient;

public interface patientdao {
	
	public List<patient> getpatient();
	public int insertinuser(patient p);
	public int getLastuseridNumber();
	public int insertinpatient(patient p);

}
