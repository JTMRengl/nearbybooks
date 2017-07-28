package com.jiaoyan.service.system.userRole;

import com.jiaoyan.entity.system.UserRole;

public interface UserRoleManager {
	
	
	/**保存用户角色
	 * @param pd
	 * @throws Exception
	 */
	public void save(UserRole userRole)throws Exception;
	
	/**删除用户角色
	 * @param pd
	 * @throws Exception
	 */
	public void deleteUserRole(String userId)throws Exception;
}
