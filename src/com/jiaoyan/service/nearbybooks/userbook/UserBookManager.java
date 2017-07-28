package com.jiaoyan.service.nearbybooks.userbook;


import com.jiaoyan.entity.nearbybooks.UserBook;

public interface UserBookManager {
	
	public void save(UserBook userbook)throws Exception;
	
	public void update(UserBook userbook)throws Exception;
	
	public UserBook getUserBookByBookId(int id)throws Exception;
	
	public void delete(int bookId)throws Exception;
}
