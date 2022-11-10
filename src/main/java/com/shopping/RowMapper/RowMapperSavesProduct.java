package com.shopping.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.shopping.model.SaveProduct;

public class RowMapperSavesProduct  implements RowMapper<SaveProduct>{

	@Override
	public SaveProduct mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		
		SaveProduct sv=new SaveProduct();
		
		sv.setId(rs.getInt(1));
		sv.setUserId(rs.getString(2));
		sv.setName(rs.getNString(3));
		sv.setHead(rs.getString(4));
		sv.setPara(rs.getString(5));
		sv.setPrice(rs.getInt(6));
		sv.setSize(rs.getInt(7));
		sv.setQuanitity(rs.getInt(8));
		sv.setTotalAmount(rs.getInt(9));
		sv.setImage(rs.getString(10));
		sv.setDates(rs.getString(11));
						
		return sv;
	}	
}