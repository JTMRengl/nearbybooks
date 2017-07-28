package com.jiaoyan.entity.nearbybooks;

import java.util.Date;

/**
 * 图书
 * @author Mr.Zhao
 *
 */
public class Book {
	
	private int id;
	private String book_name;
	private String author;
	private String cover_img;
	private String home_img;
	private String introducation;
	private String reasons;
	private String isbn;
	private int review;
	private int status_hire;
	private int type_zu_shou;
	private Date upload_time;
	private String stadard_number;
	private int delete_flag;
	 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getCover_img() {
		return cover_img;
	}
	public void setCover_img(String cover_img) {
		this.cover_img = cover_img;
	}
	public String getHome_img() {
		return home_img;
	}
	public void setHome_img(String home_img) {
		this.home_img = home_img;
	}
	public String getIntroducation() {
		return introducation;
	}
	public void setIntroducation(String introducation) {
		this.introducation = introducation;
	}
	public String getReasons() {
		return reasons;
	}
	public void setReasons(String reasons) {
		this.reasons = reasons;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public int getReview() {
		return review;
	}
	public void setReview(int review) {
		this.review = review;
	}
	public int getStatus_hire() {
		return status_hire;
	}
	public void setStatus_hire(int status_hire) {
		this.status_hire = status_hire;
	}
	public int getType_zu_shou() {
		return type_zu_shou;
	}
	public void setType_zu_shou(int type_zu_shou) {
		this.type_zu_shou = type_zu_shou;
	}
	public Date getUpload_time() {
		return upload_time;
	}
	public void setUpload_time(Date upload_time) {
		this.upload_time = upload_time;
	}
	public String getStadard_number() {
		return stadard_number;
	}
	public void setStadard_number(String stadard_number) {
		this.stadard_number = stadard_number;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
}
