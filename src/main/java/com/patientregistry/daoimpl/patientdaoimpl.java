package com.patientregistry.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.patientregistry.dao.patientdao;
import com.patientregistry.model.category;
import com.patientregistry.model.patient;


public class patientdaoimpl implements patientdao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	@Override
	public List<patient> getpatient() {
   String sql="SELECT * FROM patients p INNER JOIN users u ON p.user_id=u.id where u.role=3;";
		
		List patient = template.query(sql, new RowMapper() {
			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				patient data=new patient();
		      data.setId(rs.getInt("id"));
		      data.setAge(rs.getInt("age"));
		      data.setGender(rs.getString("gender"));
		      data.setDiagnosis(rs.getString("diagnosis"));
		      data.setHospital_no(rs.getString("hospital_no"));
		      data.setAddress(rs.getString("address"));
		      data.setTemplate_id(rs.getInt("template_id"));
		      data.setName(rs.getString("name"));
				
				return data;
			}
			
		});
		return patient;
	}

	@Override
	public int insertinuser(patient p) {
		String sql ="insert into users(name,role) values('" +p.getName()+ "','3')";
		return template.update(sql);
	}
	
	@Override
	public int getLastuseridNumber() {

		String sql = "select id,role from users where role=3 order by id desc limit 0,1 ;";

		patient user = template.queryForObject(sql, new RowMapper() {

			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				patient data = new patient();
			
				data.setUser_id(rs.getInt("id"));

				return data;
			}
		});

		return user.getUser_id();
	}

	@Override
	public int insertinpatient(patient p) {
		String sql ="insert into patients(user_id,age,gender,diagnosis,hospital_no,address,template_id) "
				+ "values('"+p.getUser_id()+"','"+p.getAge()+"','"+p.getGender()+"','"+p.getDiagnosis()+"','"+p.getHospital_no()+"','"+p.getAddress()+"','"+p.getTemplate_id()+"')";
		return template.update(sql);
	}

}
