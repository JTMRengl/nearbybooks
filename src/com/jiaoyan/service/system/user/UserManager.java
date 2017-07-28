package com.jiaoyan.service.system.user;

import java.util.List;

import com.jiaoyan.entity.system.User;
import com.jiaoyan.entity.system.UserRole;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;

public interface UserManager {
	
	/**登录判断
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public User Login(PageData pd)throws Exception;
	
	public User LoginPhone(PageData pd)throws Exception;
	
	/**统计用户总数
	 * @throws Exception
	 */
	public int findUserCount()throws Exception;
	
	/**更新loginkey
	 * @param pd
	 * @throws Exception
	 */
	public void updateLoginKey(PageData pd)throws Exception;
	
	
	/**查询角色下用户
	 * @param pd
	 * @throws Exception
	 */
	public List<User> findListByRoleId(String ROLE_ID)throws Exception;
	
	
	
	/**根据手机号查询用户
	 * @param pd
	 * @throws Exception
	 */
	public User findUserByPhone(String phone)throws Exception;
	
	
	/**根据分页查询用户
	 * @param pd
	 * @throws Exception
	 */
	public List<PageData> findUserListPage(Page page)throws Exception;
	
	
	/**修改用户
	 * @param pd
	 * @throws Exception
	 */
	public void edit(User user)throws Exception;
	
	/**保存用户
	 * @param pd
	 * @throws Exception
	 */
	public void save(User user)throws Exception;
	
	/**保存用户
	 * @param pd
	 * @throws Exception
	 */
	public void saveUser(User user,UserRole userRole)throws Exception;
	
	/**删除用户
	 * @param pd
	 * @throws Exception
	 */
	public void deleteUser(String userId)throws Exception;
	
	/**根据用户id查询用户信息
	 * @param USER_ID
	 * @throws Exception
	 */
	public PageData findById(String USER_ID)throws Exception;
	
	/**根据用户id查询用户角色信息
	 * @param USER_ID
	 * @throws Exception
	 */
	public PageData findByIdOnRole(String USER_ID)throws Exception;
	
	/**根据用户name查询用户信息
	 * @param USERNAME
	 * @throws Exception
	 */
	public User findByName(String USERNAME)throws Exception;

	public void updatePassword(PageData pd) throws Exception;


	public void updatePOSTCODEByuserId(PageData pd);

	public void updatePOSTCODEAll();

}
