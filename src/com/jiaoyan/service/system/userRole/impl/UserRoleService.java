package com.jiaoyan.service.system.userRole.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.system.UserRole;
import com.jiaoyan.service.system.userRole.UserRoleManager;

@Service("userRoleService")
public class UserRoleService implements UserRoleManager {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	@Override
	public void save(UserRole userRole) throws Exception {
		// TODO 自动生成的方法存根
		dao.save("UserRoleMapper.save", userRole);
	}

	@Override
	public void deleteUserRole(String userId) throws Exception {
		// TODO 自动生成的方法存根
		dao.delete("UserRoleMapper.deleteUserRole", userId);
	}
}
