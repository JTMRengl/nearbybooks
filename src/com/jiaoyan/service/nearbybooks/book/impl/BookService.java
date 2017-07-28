package com.jiaoyan.service.nearbybooks.book.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.nearbybooks.Book;
import com.jiaoyan.service.nearbybooks.book.BookManager;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;

@Service("bookService")
public class BookService implements BookManager {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;

	@Override
	public void save(Book book) throws Exception {
		// TODO 自动生成的方法存根
		dao.save("BookMapper.save", book);
	}

	@Override
	public void delete(int id) throws Exception {
		// TODO 自动生成的方法存根
		dao.delete("BookMapper.delete", id);
	}

	@Override
	public void update(Book book) throws Exception {
		// TODO 自动生成的方法存根
		dao.update("BookMapper.update", book);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> getBookList() throws Exception {
		// TODO 自动生成的方法存根
		return (List<Book>)dao.findForList("BookMapper.findList","1");
	}

	@Override
	public Book getBookById(int id) throws Exception {
		// TODO 自动生成的方法存根
		return (Book) dao.findForObject("BookMapper.getBookById", id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PageData> listListPageList(Page page) throws Exception {
		// TODO 自动生成的方法存根
		return (List<PageData>) dao.findForList("BookMapper.listListPageList",page);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PageData> getBookByUserId(Page page) throws Exception {
		// TODO 自动生成的方法存根
		return (List<PageData>) dao.findForList("BookMapper.getUserBookListPageList",page);
	}
}
