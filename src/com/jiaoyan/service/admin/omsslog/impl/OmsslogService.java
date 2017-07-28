package com.jiaoyan.service.admin.omsslog.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.admin.OmssLog;
import com.jiaoyan.service.admin.omsslog.OmsslogManager;


/** 
 * 说明： 业务日志表接口
 * @version
 */
@Service("omsslogService")
public class OmsslogService implements OmsslogManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**新增
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void save(OmssLog omssLog) throws Exception {
		dao.save("OmsslogMapper.save", omssLog);
	}

}
