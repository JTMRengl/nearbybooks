package com.jiaoyan.service.nearbybooks.bookComment.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.nearbybooks.BookComment;
import com.jiaoyan.service.nearbybooks.bookComment.BookCommentManager;

@Service("bookCommentService")
public class BookCommentService implements BookCommentManager {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;

	@Override
	public void save(BookComment bookComment) throws Exception {
		dao.save("BookCommentMapper.save", bookComment);
	}

	@Override
	public void delete(int id) throws Exception {
		dao.delete("BookCommentMapper.delete", id);
	}

	@Override
	public void update(BookComment bookComment) throws Exception {
		dao.update("BookCommentMapper.update", bookComment);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BookComment> getBookCommentListByBookId(int book_id) throws Exception {
		return (List<BookComment>)dao.findForList("BookCommentMapper.findListByBookId", book_id);
	}
}
