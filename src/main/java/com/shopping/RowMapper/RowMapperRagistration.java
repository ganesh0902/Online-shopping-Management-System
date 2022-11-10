package com.shopping.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.shopping.model.Ragistration;

public class RowMapperRagistration implements RowMapper<Ragistration>{

	@Override
	public Ragistration mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		
		Ragistration r=new Ragistration();
		
		r.setFname(rs.getString(1));
		r.setLname(rs.getString(2));
		r.setEmail(rs.getString(3));
		r.setPassword(rs.getString(4));
		r.setContact(rs.getInt(5));
		r.setGender(rs.getString(6));
		r.setAddress1(rs.getString(7));
		r.setAddress2(rs.getString(8));
		r.setCity(rs.getString(9));
		r.setState(rs.getString(10));
		r.setPinCode(rs.getInt(11));
		r.setCountry(rs.getString(12));
					
		return r;
	}
}