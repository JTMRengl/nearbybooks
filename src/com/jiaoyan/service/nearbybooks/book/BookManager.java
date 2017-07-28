package com.jiaoyan.service.nearbybooks.book;

import java.util.List;

import com.jiaoyan.entity.nearbybooks.Book;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;

public interface BookManager {
	
	public void save(Book book)throws Exception;
	
	public void delete(int id)throws Exception;
	
	public void update(Book book)throws Exception;
	
	public List<Book> getBookList() throws Exception;
	
	public List<PageData> listListPageList(Page page) throws Exception;
	
	public Book getBookById(int id)throws Exception;
	
	public List<PageData> getBookByUserId(Page page)throws Exception;
}
