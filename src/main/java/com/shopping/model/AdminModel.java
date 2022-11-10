package com.shopping.model;

public class AdminModel {
	
	private String userId;
	private String Password;
	public AdminModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminModel(String userId, String password) {
		super();
		this.userId = userId;
		Password = password;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	@Override
	public String toString() {
		return "AdminModel [userId=" + userId + ", Password=" + Password + "]";
	}
}
