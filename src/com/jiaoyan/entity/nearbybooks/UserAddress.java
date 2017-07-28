package com.jiaoyan.entity.nearbybooks;

public class UserAddress{
	
	/**
	 * 
	 */
	private int id;	
	private String USER_ID;		
	private String contacts;	
	private String mobile_phone; 	
	private String door;	
	private int    tier;         
	private String home_code;  
	private double coordinate_x;
	private double coordinate_y;    
	private String location;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}	
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getContacts() {
		return contacts;
	}
	public void setContacts(String contacts) {
		this.contacts = contacts;
	}
	public String getMobile_phone() {
		return mobile_phone;
	}
	public void setMobile_phone(String mobile_phone) {
		this.mobile_phone = mobile_phone;
	}
	public String getDoor() {
		return door;
	}
	public void setDoor(String door) {
		this.door = door;
	}
	public int getTier() {
		return tier;
	}
	public void setTier(int tier) {
		this.tier = tier;
	}
	public String getHome_code() {
		return home_code;
	}
	public void setHome_code(String home_code) {
		this.home_code = home_code;
	}
	public double getCoordinate_x() {
		return coordinate_x;
	}
	public void setCoordinate_x(double coordinate_x) {
		this.coordinate_x = coordinate_x;
	}
	public double getCoordinate_y() {
		return coordinate_y;
	}
	public void setCoordinate_y(double coordinate_y) {
		this.coordinate_y = coordinate_y;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}      
}
