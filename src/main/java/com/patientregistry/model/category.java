package com.patientregistry.model;

public class category {
  private int id;
  private int user_id;
  private String name;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getUser_id() {
	return user_id;
}
public void setUser_id(int user_id) {
	this.user_id = user_id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
@Override
public String toString() {
	return "category [id=" + id + ", user_id=" + user_id + ", name=" + name + "]";
}
  
  
  
}
