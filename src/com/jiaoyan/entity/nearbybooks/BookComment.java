package com.jiaoyan.entity.nearbybooks;


/**
 * 图书评论
 * @author Mr.Zhao
 *
 */
public class BookComment {
	
	private int id;
	private int book_id;
	private String user_id;
	private String content;
	private String date_comment;
	private int delete_flag;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate_comment() {
		return date_comment;
	}
	public void setDate_comment(String date_comment) {
		this.date_comment = date_comment;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	
	
}
