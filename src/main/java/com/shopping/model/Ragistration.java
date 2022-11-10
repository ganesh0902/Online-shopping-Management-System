package com.shopping.model;

public class Ragistration {

		
	private String fname;
	private String lname;
	private String email;
	private String password;
	private int contact;
	private String gender;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private int pinCode;
	private String country;
	public Ragistration() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Ragistration(String fname, String lname, String email, String password, int contact, String gender,
			String address1, String address2, String city, String state, int pinCode, String country) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.contact = contact;
		this.gender = gender;
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.pinCode = pinCode;
		this.country = country;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPinCode() {
		return pinCode;
	}
	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	@Override
	public String toString() {
		return "Ragistration [fname=" + fname + ", lname=" + lname + ", email=" + email + ", password=" + password
				+ ", contact=" + contact + ", gender=" + gender + ", address1=" + address1 + ", address2=" + address2
				+ ", city=" + city + ", state=" + state + ", pinCode=" + pinCode + ", country=" + country + "]";
	}	
}