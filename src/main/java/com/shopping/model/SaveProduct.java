package com.shopping.model;

public class SaveProduct {

	private String userId;
	private int id;
	private String name;
	private String head;
	private String para;
	private String dates;
	private int size;
	private int quanitity;
	private int price;
	private int totalAmount;
	private String image;
	
	public SaveProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SaveProduct(int id, String name, String head, String para, String date, int price, int totalAmount,
			String image) {
		super();
		this.id = id;
		this.name = name;
		this.head = head;
		this.para = para;
		this.dates = date;
		this.price = price;
		this.totalAmount = totalAmount;
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getPara() {
		return para;
	}
	public void setPara(String para) {
		this.para = para;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String date) {
		dates = date;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getQuanitity() {
		return quanitity;
	}
	public void setQuanitity(int quanitity) {
		this.quanitity = quanitity;
	}	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "SaveProduct [id=" + id + ", name=" + name + ", head=" + head + ", para=" + para + ", dates=" + dates
				+ ", size=" + size + ", quanitity=" + quanitity + ", price=" + price + ", totalAmount=" + totalAmount
				+ ", image=" + image + "]";
	}
}