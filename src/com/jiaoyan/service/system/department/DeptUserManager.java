package com.jiaoyan.service.system.department;

import com.jiaoyan.util.PageData;


public interface DeptUserManager {

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
	
	
	/**根据id查询用户或者组织机构信息
	 * @param ID
	 * @return
	 * @throws Exception
	 */
	public PageData findById(String ID) throws Exception;
	
	/**
	 * 查询用户所属组织机构信息
	 * @return
	 */
	public PageData findByUserId(String ID) throws Exception;
}
