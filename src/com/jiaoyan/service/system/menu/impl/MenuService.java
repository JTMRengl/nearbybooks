package com.jiaoyan.service.system.menu.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.system.Menu;
import com.jiaoyan.model.MenuTree;
import com.jiaoyan.model.TreeNode;
import com.jiaoyan.service.system.menu.MenuManager;
import com.jiaoyan.util.PageData;

/** 
 * 类名称：MenuService 菜单处理
 */
@Service("menuService")
public class MenuService implements MenuManager {

	
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**查询全部菜单集合
	 * @param MENU_ID
	 * @return
	 * @throws Exception
	 */
	@Override
	public List<TreeNode> findAllListMenu(String MENU_ID) throws Exception {
		List<TreeNode> menuList = new ArrayList<TreeNode>();
		List<Menu> list = this.findListByPId(MENU_ID);
		return modelTree(list, menuList);
	}
	
	/***
	 * 转换为树实体类
	 * @throws Exception 
	 */
	public List<TreeNode> modelTree(List<Menu> list,List<TreeNode> menuList) throws Exception{
		for(Menu  menu: list){
			TreeNode treeNode=new TreeNode();
			treeNode.setId(menu.getMENU_ID());
			treeNode.setpId(menu.getPARENT_ID());
			treeNode.setName(menu.getMENU_NAME());
			menuList=modelTree(this.findListByPId(menu.getMENU_ID()), menuList);
			menuList.add(treeNode);
		}
		return menuList;
	}
	
	/**查询用户角色菜单集合
	 * @param MENU_ID
	 * @return
	 * @throws Exception
	 */
	@Override
	public List<MenuTree> findAllListMenuQX(String MENU_ID) throws Exception {
		List<MenuTree> menuList = new ArrayList<MenuTree>();
		List<Menu> list = this.findListByPId(MENU_ID);
		for(Menu menu : list){
			MenuTree menuTree=new MenuTree();
			menuTree.setMENU_ID(menu.getMENU_ID());
			menuTree.setMENU_NAME(menu.getMENU_NAME());
			menuTree.setPARENT_ID(menu.getPARENT_ID());
			menuTree.setMENU_TYPE(menu.getMENU_TYPE());
			menuTree.setMENU_STATE(menu.getMENU_STATE());
			menuTree.setMENU_ICON(menu.getMENU_ICON());
			menuTree.setSubMenu(this.findAllListMenuQX(menu.getMENU_ID()));
			menuTree.setMENU_URL(menu.getMENU_URL());
			menuList.add(menuTree);
		}
		return menuList;
	}
	
	
	/**查询父节点下子节点菜单
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Menu> findListByPId(String parentId) throws Exception {
		return (List<Menu>) dao.findForList("MenuMapper.findListByPId", parentId);
	}
	
	/**根据id查询菜单数据
	 * @param MENU_ID
	 * @return
	 * @throws Exception
	 */
	@Override
	public PageData findById(String MENU_ID) throws Exception {
		return (PageData) dao.findForObject("MenuMapper.findById", MENU_ID);
	}
	
	/**添加菜单
	 * @param menu
	 * @throws Exception
	 */
	@Override
	public void save(Menu menu) throws Exception {
		dao.save("MenuMapper.save", menu);
	}
	/**修改菜单
	 * @param menu
	 * @throws Exception
	 */
	@Override
	public void edit(Menu menu) throws Exception {
		dao.update("MenuMapper.edit", menu);	
	}
	/**修改菜单图标 
	 * @param menu
	 * @throws Exception
	 */
	@Override
	public PageData editIcon(PageData pd) throws Exception {
		return (PageData) dao.findForObject("MenuMapper.editIcon", pd);	
	}
	
	/**
	 * 查询最大ID值
	 * @return
	 * @throws Exception 
	 */
	@Override
	public int findMaxId() throws Exception {
		Object obj=dao.findForObject("MenuMapper.findMaxId", "");
		return obj==null?1:Integer.parseInt(String.valueOf(obj))+1;
	}
	/**
	 * 查询最大序列值
	 * @return
	 */
	@Override
	public int findMaxOrder(String PARENT_ID)throws Exception  {
		Object obj=dao.findForObject("MenuMapper.findMaxOrder", PARENT_ID);
		return obj==null?1:Integer.parseInt(String.valueOf(obj))+1;
	}
	
	/**
	 * 删除菜单
	 * @param MENU_ID
	 * @throws Exception 
	 */
	@Override
	public void deleteMenu(String MENU_ID) throws Exception {
		dao.delete("MenuMapper.deleteMenu", MENU_ID);
	}

}
