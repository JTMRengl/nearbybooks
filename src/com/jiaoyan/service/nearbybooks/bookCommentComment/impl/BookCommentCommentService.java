package com.jiaoyan.service.nearbybooks.bookCommentComment.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.nearbybooks.BookComment;
import com.jiaoyan.entity.nearbybooks.BookCommentComment;
import com.jiaoyan.service.nearbybooks.bookComment.BookCommentManager;
import com.jiaoyan.service.nearbybooks.bookCommentComment.BookCommentCommentManager;

@Service("bookCommentCommentService")
public class BookCommentCommentService implements BookCommentCommentManager {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;

	@Override
	public void save(BookCommentComment bookCommentComment) throws Exception {
		dao.save("BookCommentCommentMapper.save", bookCommentComment);
	}

	@Override
	public void delete(int id) throws Exception {
		dao.delete("BookCommentCommentMapper.delete", id);
	}

	@Override
	public void update(BookCommentComment bookCommentComment) throws Exception {
		dao.update("BookCommentCommentMapper.update", bookCommentComment);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BookCommentComment> getBookCommentCommentListByCommentId(int book_comment_id) throws Exception {
		return (List<BookCommentComment>)dao.findForList("BookCommentCommentMapper.getBookCommentCommentListByCommentId", book_comment_id);
	}
}
