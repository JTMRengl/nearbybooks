package com.jiaoyan.service.system.department.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.service.system.department.DeptUserManager;
import com.jiaoyan.util.PageData;

/** 
 * 说明： 组织机构-用户表
 * @version
 */
@Service("deptUsertService")
public class DeptUserService implements DeptUserManager {

	
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**新增
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void save(PageData pd)throws Exception{
		dao.save("DeptUserMapper.save", pd);
	}
	
	/**删除
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void delete(PageData pd)throws Exception{
		dao.delete("DeptUserMapper.delete", pd);
	}
	
	/**修改
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void edit(PageData pd)throws Exception{
		dao.update("DeptUserMapper.edit", pd);
	}
	
	/**根据id查询用户或者组织机构信息
	 * @param ID
	 * @return
	 * @throws Exception
	 */
	@Override
	public PageData findById(String ID) throws Exception {
		return (PageData) dao.findForObject("DeptUserMapper.findById", ID);
	}

	/**
	 * 查询用户所属组织机构
	 * @return
	 */
	@Override
	public PageData findByUserId(String ID) throws Exception {
		return (PageData) dao.findForObject("DeptUserMapper.findByUserId", ID);
	}
}
