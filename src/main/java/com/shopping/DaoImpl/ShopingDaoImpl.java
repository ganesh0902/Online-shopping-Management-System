package com.shopping.DaoImpl;

import java.util.Date;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.shopping.Dao.ShoppingDao;
import com.shopping.RowMapper.RowMapperAdmin;
import com.shopping.RowMapper.RowMapperForAllData;
import com.shopping.RowMapper.RowMapperImpl;
import com.shopping.RowMapper.RowMapperRagistration;
import com.shopping.RowMapper.RowMapperSavesProduct;
import com.shopping.RowMapper.rowMapperForshop;
import com.shopping.model.AdminModel;
import com.shopping.model.Ragistration;
import com.shopping.model.SaveProduct;
import com.shopping.model.shopping;

public class ShopingDaoImpl implements ShoppingDao {

	private JdbcTemplate jdbcTemplate;

	@Override
	public int save(shopping s) {
		// save
		int id=0;
		String query = "insert into data values(?,?,?,?,?,?,?)";
		
		RowMapper<shopping> sh= new rowMapperForshop();
		
					
		int update = jdbcTemplate.update(query,id,s.getName(), s.getHead(), s.getPara(), s.getDate(),
				s.getPrice(),s.getImages());
		return update;
	}
	@Override
	public boolean Login(Ragistration s) {
		// Login process

		boolean foundpassword = false;
		boolean foundEmail = false;
		boolean login=false;

		try {
			String q1 = "select * from ragistration where gmail=?";

			RowMapper<Ragistration> rowMapp = new RowMapperImpl();

			Ragistration ragist = jdbcTemplate.queryForObject(q1, rowMapp, s.getEmail());
						
			if (ragist.getEmail().equals(s.getEmail())) {
				foundEmail = true;
			}
			if (ragist.getPassword().equals(s.getPassword())) {
								
					foundpassword = true;
					
			}			
		} catch (Exception e) {
			
			System.out.println("Email is not exist please ragister");
		}

		if (!foundEmail) {
			System.out.println("Email is doesnt exist");

		} 
		else if(!foundpassword)
		{
			System.out.println(foundpassword);			
		}
		else
		{
			login=true;
		}

		System.out.println();

		return login;
	}
	@Override
	public List<shopping> getInformation() {
		// get all information
		
		String query="select * from data";
		
		RowMapper<shopping> shop= new RowMapperForAllData();
		
		List<shopping> shopData = jdbcTemplate.query(query,shop);
				
		return shopData;
	}
	@Override
	public shopping showProductById(int id) {
		// show data by id
		
		String query="select * from data where id=?";
		
		 RowMapper<shopping> sh = new rowMapperForshop();
		
		 shopping shop = jdbcTemplate.queryForObject(query,sh,id);
				
		return shop;
	}	
	@Override
	public int RagistrationSave(Ragistration r) {
		// ragistration form save
		
		String query="insert into ragistration values(?,?,?,?,?,?,?,?,?,?,?,?)";
		
		int update = jdbcTemplate.update(query,r.getFname(),r.getLname(),r.getEmail(),r.getPassword(),r.getContact(),r.getGender(),r.getAddress1(),r.getAddress2(),r.getCity(),r.getState(),r.getPinCode(),r.getCountry());						
				
		return update;
	}	
	@Override
	public int adminProcess(AdminModel s) {
		// TODO Auto-generated method stub
		boolean userId=false;
		boolean password=false;
		int login=0;
		try
		{

			String query="select * from admin  where userId=?";
									
			RowMapper<AdminModel> ad= new RowMapperAdmin();		
			
			AdminModel admin = jdbcTemplate.queryForObject(query,ad,s.getUserId());
			
			if(admin.getUserId().equals(s.getUserId()))
			{
				if(admin.getPassword().equals(s.getPassword()))
				{
						password=true;
				}
				userId=true;
			}					
		}
		catch(Exception e) 
		{
			System.out.println("Login failed");
		}
		if(!userId)
		{
			System.out.println("User Id is not found");
		}
		else if(!password)
		{
			System.out.println("Password is wrong ");
		}
		else {
			
				login=1;
		}
		return login;
	}

	@Override
	public int updateProductById(shopping s) {
		// update product by id
		
		String query="update data set name=?,head=?,paragraph=?,Dates=?,price=? where id=?";
		int r = jdbcTemplate.update(query,s.getName(),s.getHead(),s.getPara(),new Date(),s.getPrice(),s.getId());
		
		return r;
	}	
	@Override
	public int deleteProcess(int id) {
		// delete record by Id
		
		String query="delete from data where id=?";
		
		int update = jdbcTemplate.update(query,id);
		
		System.out.println("Number of record are deleted "+update);
		
		return 0;
	}
	@Override
	public int SaveProcess(SaveProduct s) {
	
		String query="insert  into savesproduct values(?,?,?,?,?,?,?,?,?,?,?)";
		
		int price=s.getPrice();		
		int total=price=price*s.getQuanitity();
		s.setTotalAmount(total);
		int update = jdbcTemplate.update(query,s.getId(),s.getUserId(),s.getName(),s.getHead(),s.getPara(),s.getPrice(),s.getSize(),s.getQuanitity(),s.getTotalAmount(),s.getImage(),new Date());
		
		System.out.println("Number of Booking is "+update);
		
		return 0;
	}
	@Override
	public Ragistration getUser(String email) {
		// fetch the ragistration data to show in profile
		Ragistration ragister = null;			
		System.out.println(email);
		try
		{			
					
			  String query="select * from ragistration where gmail=?";
			  RowMapper<Ragistration>rs=new RowMapperRagistration();			  
			  ragister =jdbcTemplate.queryForObject(query,rs,email);
			  
		}
		catch(Exception e)
		{
			System.out.println(e);
		}				
		return ragister;
	}
	@Override
	public List<SaveProduct> getProduct(String email) {
		// fetch the order data that user is purchage		
		String query="select * from savesproduct where userId=?";
		
		 RowMapper<SaveProduct> sp=new RowMapperSavesProduct();
		 
		List<SaveProduct> li = jdbcTemplate.query(query,sp,email);
				
		return li;
	}
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}	
}