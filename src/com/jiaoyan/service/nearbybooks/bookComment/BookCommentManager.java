package com.jiaoyan.service.nearbybooks.bookComment;

import java.util.List;

import com.jiaoyan.entity.nearbybooks.BookComment;
public interface BookCommentManager {
	
	public void save(BookComment bookComment)throws Exception;
	public void delete(int id)throws Exception;
	public void update(BookComment bookComment)throws Exception;
	public List<BookComment> getBookCommentListByBookId(int book_id) throws Exception;
}
