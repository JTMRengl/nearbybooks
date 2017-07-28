package com.jiaoyan.service.admin.onlinelog;

import com.jiaoyan.entity.admin.OnlineLog;


public interface OnlinelogManager {
	
	/**新增
	 * @param pd
	 * @throws Exception
	 */
	public void save(OnlineLog onlineLog)throws Exception;
}
