package com.jiaoyan.util;

import org.apache.shiro.session.Session;

import com.jiaoyan.entity.admin.OmssLog;
import com.jiaoyan.entity.admin.OnlineLog;
import com.jiaoyan.entity.system.User;

public class LogUtil {

	/**
	 * 业务日志
	 * @param user
	 * @param content
	 * @param business
	 * @return
	 */
	public static OmssLog setOmssLog(String content,String business,String result){
		OmssLog omssLog=new OmssLog();
		Session session = Jurisdiction.getSession();
		User user = (User)session.getAttribute(Const.SESSION_USER);	
		omssLog.setOMSS_USERID(user.getUSER_ID());
		omssLog.setOMSS_USERNAME(user.getUSERNAME());
		omssLog.setOPERATE_TYPE("1");
		omssLog.setCREATE_DATE(DateUtil.getTime());
		omssLog.setOPERATE_CONTENT(content);
		omssLog.setBUSINESS(business);
		omssLog.setOPERATE_RESULT(result);
		return omssLog;
	}
	
	/**
	 * 在线日志
	 * @param user
	 * @param content
	 * @param beginTime
	 * @param endTime
	 * @param ip
	 * @return
	 */
	public static OnlineLog setOnlineLog(User user,String content,String beginTime,String endTime,String ip){
		OnlineLog onlineLog=new OnlineLog();
		onlineLog.setBEGIN_DATE(beginTime);
		onlineLog.setEND_DATE(endTime);
		onlineLog.setONLINE_COUNTE(content);
		onlineLog.setONLINE_USERID(user.getUSER_ID());
		onlineLog.setONLINE_USERNAME(user.getUSERNAME());
		onlineLog.setUSER_IP(ip);
		return onlineLog;
	}
}
