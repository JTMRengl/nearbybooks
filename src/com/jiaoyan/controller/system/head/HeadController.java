package com.jiaoyan.controller.system.head;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.entity.system.User;
import com.jiaoyan.service.system.user.UserManager;
import com.jiaoyan.util.AppUtil;
import com.jiaoyan.util.Const;
import com.jiaoyan.util.Jurisdiction;

/** 
 * 类名称：HeadController
 * @version
 */
@Controller
@RequestMapping(value="/head")
public class HeadController extends BaseController {
	
	@Resource(name="userService")
	private UserManager userService;
	
	
	/**获取头部信息
	 * @return
	 */
	@RequestMapping(value="/getList")
	@ResponseBody
	public Object getList() {
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			Session session = Jurisdiction.getSession();
			User user = (User)session.getAttribute(Const.SESSION_USER);
			if(user==null){
			   user=userService.findByName(Const.SESSION_USERNAME);
			   session.setAttribute(Const.SESSION_USER, user);
			}
			map.put("user", user);
		}catch (Exception e) {
			logger.error(e.toString(), e);
		} 
		return AppUtil.returnObject(map);
	}
}
