package com.patientregistry.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import com.patientregistry.dao.categorydao;
import com.patientregistry.model.category;

public class categorydaoimpl implements categorydao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	

	@Override
	public List<category> getall() {
		String sql="select * from categories";
		
		List category = template.query(sql, new RowMapper() {
			@Override
			public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
				category data=new category();
		        data.setId(rs.getInt("id"));
		        data.setUser_id(rs.getInt("user_id"));
		        data.setName(rs.getString("name"));
				
				return data;
			}
			
		});
		return category;
	}



	@Override
	public int insert(category ca) {
		String sql ="insert into categories(name) values('" +ca.getName()+ "')";
		return template.update(sql);
	}



	@Override
	public int delete(int id) {
		String sql= "delete from categories where id =? ";
		return template.update(sql,id);
	}
	

}
