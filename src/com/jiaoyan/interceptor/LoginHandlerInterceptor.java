package com.jiaoyan.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jiaoyan.entity.system.User;
import com.jiaoyan.service.system.user.UserManager;
import com.jiaoyan.util.Const;
import com.jiaoyan.util.Jurisdiction;
import com.jiaoyan.util.PageData;
/**
 * 
* 类名称：登录过滤，权限验证
 */
public class LoginHandlerInterceptor extends HandlerInterceptorAdapter{
	
	@Resource(name="userService")
	private UserManager userService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String path = request.getServletPath();
		if(path.matches(Const.NO_INTERCEPTOR_PATH)){
			return true;
		}else{
			User user = (User)Jurisdiction.getSession().getAttribute(Const.SESSION_USER);
			if(user!=null){
				PageData pd = new PageData();
				pd = userService.findByIdOnRole(user.getUSER_ID());
				if (pd.getString("name").equals("前台管理员")) {
					return true;
				}else{
					path = path.substring(1, path.length());
					boolean flag = Jurisdiction.hasJurisdiction(path); //访问权限校验
					if(!flag){
						response.sendRedirect(request.getContextPath() + Const.LOGIN);
					}
					return flag;
				}
			}else{
				//登陆过滤
				response.sendRedirect(request.getContextPath() + Const.LOGIN);
				return false;		
			}
		}
	}
}
