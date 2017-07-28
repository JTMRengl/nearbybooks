package com.jiaoyan.entity.nearbybooks;

/**
 * 图书
 * @author Mr.Zhao
 *
 */
public class UserBook {
	
	private int id;
	private String user_id;
	private int book_id;
	private int price_sell;
	private int price_hire;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public int getPrice_sell() {
		return price_sell;
	}
	public void setPrice_sell(int price_sell) {
		this.price_sell = price_sell;
	}
	public int getPrice_hire() {
		return price_hire;
	}
	public void setPrice_hire(int price_hire) {
		this.price_hire = price_hire;
	}
}
