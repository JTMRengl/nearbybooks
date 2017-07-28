package com.jiaoyan.service.system.user.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.system.User;
import com.jiaoyan.entity.system.UserRole;
import com.jiaoyan.service.system.user.UserManager;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;

@Service("userService")
public class UserService implements UserManager {
	
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**登录判断
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	@Override
	public User Login(PageData pd)throws Exception {
		return (User)dao.findForObject("UserMapper.Login", pd);
	}
	public User LoginPhone(PageData pd)throws Exception {
		return (User)dao.findForObject("UserMapper.LoginPhone", pd);
	}
	/**统计用户总数
	 * @throws Exception
	 */
	@Override
	public int findUserCount() throws Exception {
		return (int) dao.findForObject("UserMapper.findUserCount","");
	}
	
	/**更新loginkey
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void updateLoginKey(PageData pd)throws Exception{
		dao.update("UserMapper.updateLoginKey", pd);
	}
	
	/**查询角色下用户
	 * @param pd
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<User> findListByRoleId(String ROLE_ID) throws Exception {
		return (List<User>) dao.findForList("UserMapper.findListByRoleId", ROLE_ID);
	}
	
	/**根据分页查询用户
	 * @param pd
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<PageData> findUserListPage(Page page) throws Exception {
		return (List<PageData>) dao.findForList("UserMapper.findUserListPage", page);
	}
	/**修改用户
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void edit(User user) throws Exception {
		dao.update("UserMapper.edit", user);
	}
	/**保存用户
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void save(User user) throws Exception {
		dao.save("UserMapper.save", user);
	}
	/**删除用户
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void deleteUser(String USER_ID) throws Exception {
		dao.delete("UserMapper.deleteUser", USER_ID);
	}
	/**根据用户id查询用户信息
	 * @param USER_ID
	 * @throws Exception
	 */
	@Override
	public PageData findById(String USER_ID) throws Exception {
		return (PageData) dao.findForObject("UserMapper.findById", USER_ID);
	}
	
	/**根据用户id查询用户角色信息
	 * @param USER_ID
	 * @throws Exception
	 */
	@Override
	public PageData findByIdOnRole(String USER_ID) throws Exception {
		return (PageData) dao.findForObject("UserMapper.findByIdOnRole", USER_ID);
	}
	
	/**根据用户name查询用户信息
	 * @param USERNAME
	 * @throws Exception
	 */
	@Override
	public User findByName(String USERNAME) throws Exception {
		return (User) dao.findForObject("UserMapper.findByName", USERNAME);
	}

	@Override
	public void saveUser(User user, UserRole userRole) throws Exception {
		// TODO 自动生成的方法存根
		dao.save("UserMapper.save", user);
		dao.save("UserRoleMapper.save", userRole);
	}
	@Override
	public void updatePassword(PageData pd) throws Exception {
		dao.update("UserMapper.updatePassword", pd);
	}
	@Override
	public void updatePOSTCODEByuserId(PageData pd) {
		try {
			dao.update("UserMapper.updatePOSTCODEByuserId", pd);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public void updatePOSTCODEAll() {
		try {
			dao.update("UserMapper.updatePOSTCODEAll","");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public User findUserByPhone(String phone) throws Exception {
		return (User) dao.findForObject("UserMapper.findUserByPhone", phone);
	}
}
