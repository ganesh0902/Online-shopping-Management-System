package com.shopping.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.shopping.model.shopping;

public class rowMapperForshop implements RowMapper<shopping>{

	@Override
	public shopping mapRow(ResultSet rs, int arg1) throws SQLException {
		// get shopping data by Id
		
		shopping s=new shopping();
		s.setId(rs.getInt(1));
		s.setName(rs.getString(2));
		s.setHead(rs.getString(3));
		s.setPara(rs.getString(4));
		s.setDate(rs.getDate(5));
		s.setPrice(rs.getInt(6));
				
		return s;
	}

}
