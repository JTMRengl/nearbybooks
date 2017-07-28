package com.jiaoyan.service.nearbybooks.booktags.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.service.nearbybooks.booktags.BookTagsManager;

@Service("bookTagsService")
public class BookTagsService implements BookTagsManager {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
}
