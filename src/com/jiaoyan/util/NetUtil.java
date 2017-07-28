package com.jiaoyan.util;

import java.net.InetAddress;

import javax.servlet.http.HttpServletRequest;


/**
 * @描述：网络工具
 */
public class NetUtil{

	/**
	 * 获取ip
	 * @param request
	 * @return
	 */
	public static String getIpAddr(HttpServletRequest request){
	  String ip = request.getHeader("X-Forwarded-For");
	  if (ip == null) {  
		 ip = request.getRemoteAddr();  
	  }else{
	     ip = request.getHeader("x-forwarded-for");  
	  }
      if (ip.equals("0:0:0:0:0:0:0:1")) {
          ip = getLocalIp();
      }
      return ip;
	}
	
	
	/**
	 * @描述：获取本机的名称
	 * @return
	 */
	public static String getLocalHostName() {
		String strLocalHostName = null;
		try {
			InetAddress inet = InetAddress.getLocalHost();
			strLocalHostName = inet.getHostName();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return strLocalHostName;
	}
	
	/**
	 * @描述：获取本机的IP地址
	 * @return
	 */
	public static String getLocalIp() {
		String strLocalIp = null;
		try {
			InetAddress inet = InetAddress.getLocalHost();
			strLocalIp = inet.getHostAddress();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return strLocalIp;
	}
	

	
}
