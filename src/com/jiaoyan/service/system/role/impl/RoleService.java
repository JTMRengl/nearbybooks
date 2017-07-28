package com.jiaoyan.service.system.role.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.system.Role;
import com.jiaoyan.service.system.role.RoleManager;
import com.jiaoyan.util.PageData;

/**	角色
 */
@Service("roleService")
public class RoleService implements RoleManager{

	
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**
	 * 根据用户id查询用户下所有用户角色
	 * @param userId
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Role> findByUserId(String USERID) throws Exception {
		return (List<Role>) dao.findForList("RoleMapper.findByUserId", USERID);
	}
	
	/**查询角色列表
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Role> findRoleList() throws Exception {
		return (List<Role>) dao.findForList("RoleMapper.findRoleList", null);
	}
	
	/**通过id查找
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	@Override
	public Role findById(String ROLE_ID) throws Exception {
		return (Role) dao.findForObject("RoleMapper.findById", ROLE_ID);
	}
	/**
	 * 添加角色
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void save(PageData pd) throws Exception {
		dao.save("RoleMapper.save", pd);
	}
	/**
	 * 修改角色
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void edit(PageData pd) throws Exception {
		dao.update("RoleMapper.edit", pd);
	}
	/**
	 * 删除角色
	 * @param ROLE_ID
	 * @throws Exception
	 */
	@Override
	public void deleteRole(String ROLE_ID) throws Exception {
		dao.delete("RoleMapper.deleteRole", ROLE_ID);
	}
	/**
	 * 更新角色权限
	 * @param role
	 * @throws Exception
	 */
	@Override
	public void updateRoleRights(PageData pd) throws Exception {
		dao.update("RoleMapper.updateRoleRights", pd);
	}

}
