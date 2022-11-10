package com.shopping.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.shopping.model.Ragistration;

public class RowMapperImpl implements RowMapper<Ragistration>{

	
		@Override
		public Ragistration mapRow(ResultSet rs, int arg1) throws SQLException {
			// TODO Auto-generated method s
			
			Ragistration r=new Ragistration();						
			r.setEmail(rs.getString(3));
			r.setPassword(rs.getString(4));						
			return r;
		}
		
	}	