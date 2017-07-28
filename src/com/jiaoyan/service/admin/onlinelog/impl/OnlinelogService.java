package com.jiaoyan.service.admin.onlinelog.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.admin.OnlineLog;
import com.jiaoyan.service.admin.onlinelog.OnlinelogManager;

/** 
 * 说明： 登录日志表接口
 * @version
 */
@Service("onlinelogService")
public class OnlinelogService implements OnlinelogManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**新增
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void save(OnlineLog onlineLog) throws Exception {
		dao.save("OnlinelogMapper.save",  onlineLog);
	}

}
