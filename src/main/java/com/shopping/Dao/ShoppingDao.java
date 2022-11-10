package com.shopping.Dao;

import java.util.List;

import com.shopping.model.AdminModel;
import com.shopping.model.Ragistration;
import com.shopping.model.SaveProduct;
import com.shopping.model.shopping;

public interface ShoppingDao {
	
	int save(shopping s);
	public boolean Login(Ragistration s);
	public List<shopping> getInformation();
	public shopping showProductById(int id);
	public int RagistrationSave(Ragistration r);
	public int adminProcess(AdminModel s);
	public int updateProductById(shopping s);
	public int deleteProcess(int id);
	public int SaveProcess(SaveProduct s);
	public Ragistration getUser(String email);
	public List<SaveProduct> getProduct(String email);
}