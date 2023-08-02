package com.patientregistry.model;

public class patient {
private int id;
private String name;
private int age;
private String gender;
private String diagnosis;
private String hospital_no;
private String address;
private int template_id;
private int user_id;

private int role;


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
public int getRole() {
	return role;
}
public void setRole(int role) {
	this.role = role;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getDiagnosis() {
	return diagnosis;
}
public void setDiagnosis(String diagnosis) {
	this.diagnosis = diagnosis;
}
public String getHospital_no() {
	return hospital_no;
}
public void setHospital_no(String hospital_no) {
	this.hospital_no = hospital_no;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public int getTemplate_id() {
	return template_id;
}
public void setTemplate_id(int template_id) {
	this.template_id = template_id;
}
@Override
public String toString() {
	return "patient [id=" + id + ", age=" + age + ", gender=" + gender + ", diagnosis=" + diagnosis + ", hospital_no="
			+ hospital_no + ", address=" + address + ", template_id=" + template_id + ", user_id=" + user_id + ", name="
			+ name + ", role=" + role + "]";
}




}
