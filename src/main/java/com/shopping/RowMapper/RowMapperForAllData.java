package com.shopping.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.shopping.model.shopping;

public class RowMapperForAllData implements RowMapper<shopping> {

	@Override
	public shopping mapRow(ResultSet rs, int arg1) throws SQLException {
		// fetch All shopping data
		
		shopping shop=new shopping();
		shop.setId(rs.getInt(1));
		shop.setName(rs.getString(2));
		shop.setHead(rs.getString(3));
		shop.setPara(rs.getString(4));
		shop.setDate(rs.getDate(5));
		shop.setPrice(rs.getInt(6));				
		return shop;
	}	
}
