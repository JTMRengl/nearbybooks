package com.jiaoyan.entity.nearbybooks;

import java.sql.Date;

import com.sun.star.bridge.oleautomation.Decimal;

/**
 * 订单
 * @author Mr.Zhao
 *
 */
public class Order {
	
	private int id;
	private String order_code;
	private int user_id;
	private String book_id;
	private Decimal priceall;
	private Date place_time;
	private Date receive_time;
	private String order_info;
	private int order_status;
	private String dispatching_site;
	private int dispatching_manner;
	private String integral;
	private int type_zu_shou;
	private String number;
	private String remarks;
	private int delete_flag;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrder_code() {
		return order_code;
	}
	public void setOrder_code(String order_code) {
		this.order_code = order_code;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getBook_id() {
		return book_id;
	}
	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}
	public Decimal getPriceall() {
		return priceall;
	}
	public void setPriceall(Decimal priceall) {
		this.priceall = priceall;
	}
	public Date getPlace_time() {
		return place_time;
	}
	public void setPlace_time(Date place_time) {
		this.place_time = place_time;
	}
	public Date getReceive_time() {
		return receive_time;
	}
	public void setReceive_time(Date receive_time) {
		this.receive_time = receive_time;
	}
	public String getOrder_info() {
		return order_info;
	}
	public void setOrder_info(String order_info) {
		this.order_info = order_info;
	}
	public int getOrder_status() {
		return order_status;
	}
	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}
	public String getDispatching_site() {
		return dispatching_site;
	}
	public void setDispatching_site(String dispatching_site) {
		this.dispatching_site = dispatching_site;
	}
	public int getDispatching_manner() {
		return dispatching_manner;
	}
	public void setDispatching_manner(int dispatching_manner) {
		this.dispatching_manner = dispatching_manner;
	}
	public String getIntegral() {
		return integral;
	}
	public void setIntegral(String integral) {
		this.integral = integral;
	}
	public int getType_zu_shou() {
		return type_zu_shou;
	}
	public void setType_zu_shou(int type_zu_shou) {
		this.type_zu_shou = type_zu_shou;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
}
