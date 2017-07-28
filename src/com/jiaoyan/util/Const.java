package com.jiaoyan.util;

public class Const {
	
	public static final String SESSION_SECURITY_CODE = "sessionSecCode";   //验证码
	public static final String SESSION_USER = "sessionUser";			   //session用的用户
	public static final String sSESSION_ROLE_RIGHTS = "sessionRoleRights"; //用户角色组
	public static final String SESSION_USERNAME = "USERNAME";			   //用户名
	public static final String SESSION_QX = "QX";                          //用户按钮权限
	
	public static final String SESSION_allmenuList = "allmenuList";		//全部菜单
	public static final String SESSION_menuList = "menuList";			//当前菜单
	
	public static final String LOGIN = "/login_toLogin.do";				//登录地址
	
	public static final String NO_INTERCEPTOR_PATH = ".*/((login)|(login_user)|(logout)|(code)|(app)|(weixin)|(static)|(main)|(websocket)|(uploadFiles/uploadImgs)|(uploadFiles/file)|(register/*)|(user/addCell_phone_number)).*";	//不对匹配该值的访问路径拦截（正则）
	
	public static final String DEFAULTPASSWORD="123456";  //默认密码
}
