package com.shopping.model;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class shopping {

	
	private int id;	
	private String name;
	private String images="Images here";
	private String head;
	private String para;
	private Date date=new Date();
	private int price;
	
	public shopping() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public shopping(int id, String name, String head, String para, Date date, int price) {
		super();
		this.id = id;
		this.name = name;
		this.head = head;
		this.para = para;
		this.date = new Date();
		this.price = price;
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
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = new Date();		
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}	
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}

	@Override
	public String toString() {
		return "shopping [id=" + id + ", name=" + name + ", head=" + head + ", para=" + para + ", date=" + date
				+ ", price=" + price + "]";
	}	
}
