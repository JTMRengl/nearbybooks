package com.jiaoyan.entity.nearbybooks;

import java.sql.Date;

import com.sun.star.bridge.oleautomation.Decimal;

/**
 * 购物车
 * @author Mr.Zhao
 *
 */
public class ShoppingCart {
	
	private int id;
	private String cart_code;
	private int user_id;
	private Date create_date;
	private int cart_status;
	private int book_id;
	private int quantity;
	private Decimal price;
	private int delete_flag;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCart_code() {
		return cart_code;
	}
	public void setCart_code(String cart_code) {
		this.cart_code = cart_code;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public int getCart_status() {
		return cart_status;
	}
	public void setCart_status(int cart_status) {
		this.cart_status = cart_status;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Decimal getPrice() {
		return price;
	}
	public void setPrice(Decimal price) {
		this.price = price;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
}
