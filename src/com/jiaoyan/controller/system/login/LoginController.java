package com.jiaoyan.controller.system.login;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.entity.nearbybooks.Book;
import com.jiaoyan.entity.system.Role;
import com.jiaoyan.entity.system.User;
import com.jiaoyan.model.MenuTree;
import com.jiaoyan.service.admin.onlinelog.OnlinelogManager;
import com.jiaoyan.service.nearbybooks.book.BookManager;
import com.jiaoyan.service.system.menu.MenuManager;
import com.jiaoyan.service.system.role.RoleManager;
import com.jiaoyan.service.system.user.UserManager;
import com.jiaoyan.util.AppUtil;
import com.jiaoyan.util.Const;
import com.jiaoyan.util.DateUtil;
import com.jiaoyan.util.Jurisdiction;
import com.jiaoyan.util.LogUtil;
import com.jiaoyan.util.NetUtil;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;
import com.jiaoyan.util.RightsHelper;
import com.jiaoyan.util.ServerIp;
import com.jiaoyan.util.Tools;

@Controller
public class LoginController extends BaseController {
	
	@Resource(name="userService")
	private UserManager userService;
	
	@Resource(name="bookService")
	private BookManager bookService;
	
	@Resource(name="menuService")
	private MenuManager menuService;	
	
	@Resource(name="roleService")
	private RoleManager roleService;
	
	@Resource(name="onlinelogService")
	private OnlinelogManager onlinelogService;
	@Resource(name="serverIp")
	private ServerIp serverIp;
	/*private LoginController(){
		UserManager userService2=(UserManager) ContextLoader.getCurrentWebApplicationContext().getBean("userService");
		userService2.updatePOSTCODEAll();
	}*/
	
	@RequestMapping(value="/login_toLogin")
	public ModelAndView toLogin()throws Exception{
		ModelAndView mv = this.getModelAndView();
		//mv.setViewName("system/index/login");
		List<Book> bookList = bookService.getBookList();
		for (int i = 0; i < bookList.size(); i++) {
			if (bookList.get(i).getIntroducation().length() >= 30 ) {
				bookList.get(i).setHome_img(bookList.get(i).getIntroducation().substring(0, 30)+".....");
			}
		}
		mv.addObject("bookList", bookList);
		mv.setViewName("system/index/index");
		return mv;
	}
	
	/**访问登录页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/login_tolog")
	public ModelAndView list(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/index/login");
		return mv;
	}
	
	@RequestMapping(value = "/login_user")
	@ResponseBody
	public Map<String, Object> toUpdate() throws Exception {
		User user = (User)Jurisdiction.getSession().getAttribute(Const.SESSION_USER);
		Map<String,Object> map=new HashMap<String, Object>();
		if (user != null) {
			map.put("msg", "true");
			map.put("user", user);
		} else {
			map.put("msg", "false");
		}
		return map;
	}
	
	
	/**请求登录，验证用户
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/login" ,produces="application/json;charset=UTF-8")
	@ResponseBody
	public Object login()throws Exception{
		Map<String,String> map = new HashMap<String,String>();
		PageData pd =getPageData();
		String result = "";
		String [] KEYDATA =Tools.str2StrArray(pd.getString("KEYDATA"));
		if(null != KEYDATA && KEYDATA.length == 2){
			Session session = Jurisdiction.getSession();
			/*String sessionCode = (String)session.getAttribute(Const.SESSION_SECURITY_CODE);		//获取session中的验证码
			String code = KEYDATA[2];*/
			/*if(null == code || "".equals(code)){//判断效验码
				result = "nullcode"; 			//效验码为空
			}else{      2017-06-15*/
				String USERNAME = KEYDATA[0];	//登录过来的用户名
				String PASSWORD  = KEYDATA[1];	//登录过来的密码
				pd.put("USERNAME", USERNAME);
				pd.put("PHONE", USERNAME);
				//if(Tools.notEmpty(sessionCode) && sessionCode.equalsIgnoreCase(code)){	2017-06-15	//判断登录验证码
					//String passwd = new SimpleHash("SHA-1", "san", PASSWORD).toString();	//密码加密
					pd.put("PASSWORD", PASSWORD);
					User user=userService.Login(pd);
					//手机号登陆
					if(user==null){
					 user=userService.LoginPhone(pd);
					}
					if(user!=null){
						/*if(user.getPOSTCODE()==null||user.getPOSTCODE().equals("0")){*/
							session.setAttribute(Const.SESSION_USER, user);			//把用户信息放session中
							session.setAttribute(Const.SESSION_USERNAME, user.getNAME());
							//session.removeAttribute(Const.SESSION_SECURITY_CODE);	//清除登录验证码的session  2017-06-15
							
							HttpServletRequest request = this.getRequest();
							//添加用户登录日志
							onlinelogService.save(LogUtil.setOnlineLog(user, "在线登录", DateUtil.getTime().toString(), "", NetUtil.getIpAddr(request)));
							
							
							//shiro加入身份验证
							Subject subject = SecurityUtils.getSubject(); 
						    UsernamePasswordToken token = new UsernamePasswordToken(USERNAME, PASSWORD); 
						    subject.login(token); 
						/*}else{
							result = "loginon"; 				//用户已登陆
							logBefore(logger, USERNAME+"此用户已被登陆");	
						}*/
					}else{
						result = "usererror"; 				//用户名或密码有误
						logBefore(logger, USERNAME+"登录系统密码或用户名错误");	
					}
			  /*}else{
					result = "codeerror"; 				//用户名或密码有误
				}   2017-06-15*/
				if(Tools.isEmpty(result)){
					result = "success";					//验证成功

					logBefore(logger, USERNAME+"登录系统");
				}
			/*}   2017-06-15*/
		}else{
			result = "error";	//缺少参数
		}
		map.put("result", result);
		return AppUtil.returnObject(map);
	}
	
	
	/**访问系统首页
	 * @param changeMenu：切换菜单参数
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/main/{changeMenu}")
	public ModelAndView login_index(@PathVariable("changeMenu") String changeMenu){
		ModelAndView mv = this.getModelAndView();
		try {
			Session session = Jurisdiction.getSession();
			User user = (User)session.getAttribute(Const.SESSION_USER);				//读取session中的用户信息(单独用户信息)
			if(user!=null){
				String USERNAME = user.getUSERNAME();
				session.setAttribute(Const.SESSION_USERNAME, USERNAME);				//放入用户名到session
				List<MenuTree> allmenuList = new ArrayList<MenuTree>();
				List<Role> roleList=roleService.findByUserId(user.getUSER_ID());        //获取用户所有角色
				if(null == session.getAttribute(USERNAME + Const.SESSION_allmenuList)){
					//获取所有菜单
					allmenuList = menuService.findAllListMenuQX("0");	
					allmenuList=this.readMenu(allmenuList,roleList);//获取用户权限菜单
					session.setAttribute(USERNAME + Const.SESSION_allmenuList, allmenuList);//菜单权限放入session中
				}else{
					allmenuList = (List<MenuTree>)session.getAttribute(USERNAME + Const.SESSION_allmenuList);
				}
				
				if(null == session.getAttribute(USERNAME + Const.SESSION_QX)){
					session.setAttribute(USERNAME + Const.SESSION_QX, this.getUQXIDS(user));	//按钮权限放到session中
				}
				
				//更新loginkey
				this.updateLoginKey(USERNAME);	
				
				mv.addObject("menuList", allmenuList);
				mv.addObject("user", user);
				mv.addObject("serverIP",serverIp.getServerIp());
				mv.setViewName("system/index/main");
			}else{
				mv.setViewName("system/index/login");                    //session失效后跳转登录页面
			}	
		} catch (Exception e) {
			mv.setViewName("system/index/login");
			logger.error(e.getMessage(), e);
			e.printStackTrace();
		}
		return mv;
	}

	
	/**
	 * 进入tab标签
	 * @return
	 */
	@RequestMapping(value="/tab")
	public String tab(){
		return "system/index/tab";
	}
	
	/**
	 * 进入首页后的默认页面
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="/login_default")
	public ModelAndView defaultPage() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		mv.addObject("pd",pd);
		pd.put("userCount", userService.findUserCount());				//系统用户数
		mv.setViewName("system/index/default");
		return mv;
	}
	
	/**
	 * 用户注销
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/logout")
	public ModelAndView logout(){
		String USERNAME = Jurisdiction.getUsername();	//当前登录的用户名
		logBefore(logger, USERNAME+"退出系统");
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try {
			Session session = Jurisdiction.getSession();	//以下清除session缓存
			User user = (User)session.getAttribute(Const.SESSION_USER);
			session.removeAttribute(Const.SESSION_USER);
			session.removeAttribute(USERNAME + Const.SESSION_allmenuList);
			session.removeAttribute(USERNAME + Const.SESSION_menuList);
			session.removeAttribute(USERNAME + Const.SESSION_QX);
			session.removeAttribute(Const.SESSION_USERNAME);
			session.removeAttribute("changeMenu");
			//shiro销毁登录
			Subject subject = SecurityUtils.getSubject(); 
			subject.logout();
			
			HttpServletRequest request = this.getRequest();
			//添加用户t退出日志
			onlinelogService.save(LogUtil.setOnlineLog(user, "在线退出", DateUtil.getTime().toString(), "", NetUtil.getIpAddr(request)));
		
			pd.put("msg", pd.getString("msg"));
			//mv.setViewName("system/index/login");
			List<Book> bookList = bookService.getBookList();
			for (int i = 0; i < bookList.size(); i++) {
				if (bookList.get(i).getIntroducation().length() >= 30 ) {
					bookList.get(i).setHome_img(bookList.get(i).getIntroducation().substring(0, 30)+".....");
				}
			}
			mv.addObject("bookList", bookList);			
			mv.setViewName("system/index/index");
			mv.addObject("pd",pd);	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	
	/**根据角色权限组获取本权限的菜单列表(递归处理)
	 * @param menuList：传入的总菜单
	 * @param roleRights：加密的权限字符串
	 * @return
	 */
	public List<MenuTree> readMenu(List<MenuTree> menuList,List<Role> roleList){
		boolean result=false;		
		for (int i = 0; i < menuList.size(); i++) {
			for (Role role : roleList) {
			   if(Tools.notEmpty(role.getRIGHTS())){
				  if(RightsHelper.testRights(role.getRIGHTS(), menuList.get(i).getMENU_ID())){
					 result=RightsHelper.testRights(role.getRIGHTS(), menuList.get(i).getMENU_ID());  
					 break;
				  }
			   }
		   }
		   menuList.get(i).setHasMenu(result);
           if(result){
        	  result=false;
        	  this.readMenu(menuList.get(i).getSubMenu(), roleList);//是：继续排查其子菜单   
		   }else{
			   menuList.remove(i);
			   i--;  
		   }
		}
		return menuList;
	}
	
	/**获取用户权限组
	 * @param session
	 * @return
	 */
	public Map<String, String> getUQXIDS(User user){
		Map<String, String> map = new HashMap<String, String>();
		try {
			List<Role> roleList=roleService.findByUserId(user.getUSER_ID());    //获取用户所有角色
			String adds="";
			String dels="";
			String edits="";
			String chas="";
			for (Role r : roleList) {
				Role role=roleService.findById(r.getROLE_ID());
				adds+=role.getADD_QX()+",";
				dels+=role.getDEL_QX()+",";
				edits+=role.getEDIT_QX()+",";
				chas+=role.getCHA_QX()+",";
			}
			map.put("adds", adds);	    //增
			map.put("dels", dels);	    //删
			map.put("edits", edits);	//改
			map.put("chas", chas);	    //查
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}	
		return map;
	}
	
	/** 更新登录用户的loginkey
	 * @param USERNAME
	 * @throws Exception
	 */
	public void updateLoginKey(String USERNAME) throws Exception {  
		PageData pd = new PageData();
		String loginkey = new SimpleHash("SHA-1", DateUtil.getTime()+USERNAME,DateUtil.getDays()).toString();
		pd.put("LOGIN_KEY", loginkey);
		pd.put("USERNAME", USERNAME);
		userService.updateLoginKey(pd);
	}  
	
}
