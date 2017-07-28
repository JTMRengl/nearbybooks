package com.jiaoyan.entity.nearbybooks;


/**
 * 图书评论
 * @author Mr.Zhao
 *
 */
public class BookCommentComment {
	
	private int id;
	private int book_comment_id;
	private String user_id;
	private String comment_content;
	private String comment_time;
	private String comment_user;
	private int delete_flag;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBook_comment_id() {
		return book_comment_id;
	}
	public void setBook_comment_id(int book_comment_id) {
		this.book_comment_id = book_comment_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_time() {
		return comment_time;
	}
	public void setComment_time(String comment_time) {
		this.comment_time = comment_time;
	}
	public String getComment_user() {
		return comment_user;
	}
	public void setComment_user(String comment_user) {
		this.comment_user = comment_user;
	}
	public int getDelete_flag() {
		return delete_flag;
	}
	public void setDelete_flag(int delete_flag) {
		this.delete_flag = delete_flag;
	}
	
	
	
	
}
