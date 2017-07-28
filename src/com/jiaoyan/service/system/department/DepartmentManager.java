package com.jiaoyan.service.system.department;

import java.util.List;

import com.jiaoyan.entity.system.Department;
import com.jiaoyan.model.TreeNode;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;


public interface DepartmentManager {
	
	/**新增
	 * @param pd
	 * @throws Exception
	 */
	public void save(PageData pd)throws Exception;
	
	/**删除
	 * @param pd
	 * @throws Exception
	 */
	public void delete(PageData pd)throws Exception;
	
	/**修改
	 * @param pd
	 * @throws Exception
	 */
	public void edit(PageData pd)throws Exception;
	
	/**列表
	 * @param page
	 * @throws Exception
	 */
	public List<PageData> list(Page page)throws Exception;
	
	
	/**查询全部组织机构集合
	 * @param DEPARTMENT_ID
	 * @return
	 * @throws Exception
	 */
	public List<TreeNode> findAllListDepartment(String DEPARTMENT_ID) throws Exception;
	
	
	/**查询父节点下子节点菜单
	 * @param parentId
	 * @return
	 * @throws Exception
	 */
	public List<Department> findListByPId(String parentId) throws Exception;
	
	/**根据id查询组织机构数据
	 * @param DEPARTMENT_ID
	 * @return
	 * @throws Exception
	 */
	public PageData findById(String DEPARTMENT_ID) throws Exception;
	
	/**
	 * 查询最大序列值
	 * @return
	 */
	public String findMaxOrder(String PARENT_ID) throws Exception;
	

}
