package com.jiaoyan.service.system.menu;

import java.util.List;

import com.jiaoyan.entity.system.Menu;
import com.jiaoyan.model.MenuTree;
import com.jiaoyan.model.TreeNode;
import com.jiaoyan.util.PageData;


/**
 * MenuService 菜单处理接口
 */
public interface MenuManager {
	
	
	/**查询全部菜单集合
	 * @param MENU_ID
	 * @return
	 * @throws Exception
	 */
	public List<TreeNode> findAllListMenu(String MENU_ID) throws Exception;
	
	
	/**查询用户角色菜单集合
	 * @param MENU_ID
	 * @return
	 * @throws Exception
	 */
	public List<MenuTree> findAllListMenuQX(String MENU_ID) throws Exception;
	
	
	
	/**查询父节点下子节点菜单
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	public List<Menu> findListByPId(String parentId) throws Exception;
	
	
	/**根据id查询菜单数据
	 * @param MENU_ID
	 * @return
	 * @throws Exception
	 */
	public PageData findById(String MENU_ID) throws Exception;
	
	
	/**添加菜单
	 * @param menu
	 * @throws Exception
	 */
	public void save(Menu menu) throws Exception;
	
	/**修改菜单
	 * @param menu
	 * @throws Exception
	 */
	public void edit(Menu menu) throws Exception;
	
	/**修改菜单图标 
	 * @param menu
	 * @throws Exception
	 */
	public PageData editIcon(PageData pd) throws Exception;
	
	/**
	 * 查询最大ID值
	 * @return
	 */
	public int findMaxId() throws Exception;
	
	/**
	 * 查询最大序列值
	 * @return
	 */
	public int findMaxOrder(String PARENT_ID) throws Exception;
	
	/**
	 * 删除菜单
	 * @param MENU_ID
	 */
	public void deleteMenu(String MENU_ID) throws Exception;
	
}
