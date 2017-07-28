package com.jiaoyan.service.system.role;

import java.util.List;

import com.jiaoyan.entity.system.Role;
import com.jiaoyan.util.PageData;


/**	角色接口类
 */
public interface RoleManager {
	
	/**
	 * 根据用户id查询用户下所有用户角色
	 * @param userId
	 * @return
	 */
	public List<Role> findByUserId(String USERID) throws Exception;
	
	
	/**查询角色列表
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	public List<Role> findRoleList() throws Exception;
	
	
	/**通过id查找
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public Role findById(String ROLE_ID) throws Exception;
	
	/**
	 * 添加角色
	 * @param pd
	 * @throws Exception
	 */
	public void save(PageData pd) throws Exception;
	
	/**
	 * 修改角色
	 * @param pd
	 * @throws Exception
	 */
	public void edit(PageData pd) throws Exception;
	
	/**
	 * 删除角色
	 * @param ROLE_ID
	 * @throws Exception
	 */
	public void deleteRole(String ROLE_ID) throws Exception;
	
	/**
	 * 更新角色权限
	 * @param pd
	 * @throws Exception
	 */
	public void updateRoleRights(PageData pd) throws Exception;
}
