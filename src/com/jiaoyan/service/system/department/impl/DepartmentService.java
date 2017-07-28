package com.jiaoyan.service.system.department.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jiaoyan.dao.DaoSupport;
import com.jiaoyan.entity.system.Department;
import com.jiaoyan.model.TreeNode;
import com.jiaoyan.service.system.department.DepartmentManager;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;

/** 
 * 说明： 组织机构
 * @version
 */
@Service("departmentService")
public class DepartmentService implements DepartmentManager {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/**新增
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void save(PageData pd) throws Exception {
		dao.save("DepartmentMapper.save", pd);
	}
	
	/**删除
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void delete(PageData pd) throws Exception {
		dao.delete("DepartmentMapper.delete", pd);
	}
	/**修改
	 * @param pd
	 * @throws Exception
	 */
	@Override
	public void edit(PageData pd) throws Exception {
		dao.update("DepartmentMapper.edit", pd);
	}
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<PageData> list(Page page) throws Exception {
		return (List<PageData>)dao.findForList("DepartmentMapper.datalistPage", page);
	}

	/**查询全部组织机构集合
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	@Override
	public List<TreeNode> findAllListDepartment(String DEPARTMENT_ID)throws Exception {
		List<TreeNode> deptList = new ArrayList<TreeNode>();
		List<Department> list = this.findListByPId(DEPARTMENT_ID);
		return modelTree(list, deptList);
	}

	/**查询父节点下子节点菜单
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Department> findListByPId(String parentId)throws Exception {
		return (List<Department>)dao.findForList("DepartmentMapper.findListByPId", parentId);
	}
	
	/***
	 * 转换为树实体类
	 * @throws Exception 
	 */
	public List<TreeNode> modelTree(List<Department> list,List<TreeNode> deptList) throws Exception{
		for(Department dept : list){
			TreeNode treeNode=new TreeNode();
			treeNode.setId(dept.getDEPARTMENT_ID());
			treeNode.setpId(dept.getPARENT_ID());
			treeNode.setName(dept.getNAME());
			deptList=modelTree(this.findListByPId(dept.getDEPARTMENT_ID()), deptList);
			deptList.add(treeNode);
		}
		return deptList;
	}
	
	/**根据id查询组织机构数据
	 * @param DEPARTMENT_ID
	 * @return
	 * @throws Exception
	 */
	@Override
	public PageData findById(String DEPARTMENT_ID) throws Exception {
		return (PageData) dao.findForObject("DepartmentMapper.findById", DEPARTMENT_ID);
	}
	/**
	 * 查询最大序列值
	 * @return
	 */
	@Override
	public String findMaxOrder(String PARENT_ID) throws Exception {
		return (String) dao.findForObject("DepartmentMapper.findMaxOrder", PARENT_ID);
	}

}
