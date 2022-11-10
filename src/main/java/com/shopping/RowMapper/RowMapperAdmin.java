package com.shopping.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.shopping.model.AdminModel;

public class RowMapperAdmin implements RowMapper<AdminModel>{

	@Override
	public AdminModel mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		
		AdminModel add=new AdminModel();
		
		add.setUserId(rs.getString(1));
		add.setPassword(rs.getString(2));
				
		return add;
	}

	
}
