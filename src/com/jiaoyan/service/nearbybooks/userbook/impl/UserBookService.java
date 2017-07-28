package com.jiaoyan.service.nearbybooks.userbook.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.nearbybooks.UserBook;
import com.jiaoyan.service.nearbybooks.userbook.UserBookManager;
import com.jiaoyan.util.PageData;

@Service("userBookService")
public class UserBookService implements UserBookManager {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;

	@Override
	public void save(UserBook userbook) throws Exception {
		// TODO 自动生成的方法存根
		dao.save("UserBookMapper.save", userbook);
	}

	@Override
	public void update(UserBook userbook) throws Exception {
		// TODO 自动生成的方法存根
		dao.update("UserBookMapper.update", userbook);
	}

	@Override
	public UserBook getUserBookByBookId(int id) throws Exception {
		// TODO 自动生成的方法存根
		return (UserBook) dao.findForObject("UserBookMapper.getUserBookByBookId", id);
	}

	@Override
	public void delete(int bookId) throws Exception {
		// TODO 自动生成的方法存根
		dao.delete("UserBookMapper.delete", bookId);
	}
}
