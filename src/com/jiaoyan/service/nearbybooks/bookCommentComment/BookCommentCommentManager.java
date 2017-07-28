package com.jiaoyan.service.nearbybooks.bookCommentComment;

import java.util.List;

import com.jiaoyan.entity.nearbybooks.BookCommentComment;
public interface BookCommentCommentManager {
	
	public void save(BookCommentComment bookCommentComment)throws Exception;
	public void delete(int id)throws Exception;
	public void update(BookCommentComment bookCommentComment)throws Exception;
	public List<BookCommentComment> getBookCommentCommentListByCommentId(int book_comment_id) throws Exception;
}
