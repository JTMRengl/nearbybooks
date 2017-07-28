package com.jiaoyan.controller.system.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.entity.nearbybooks.UserAddress;
import com.jiaoyan.entity.system.Role;
import com.jiaoyan.entity.system.User;
import com.jiaoyan.entity.system.UserRole;
import com.jiaoyan.model.Constants;
import com.jiaoyan.model.ReturnResult;
import com.jiaoyan.service.admin.omsslog.OmsslogManager;
import com.jiaoyan.service.system.role.RoleManager;
import com.jiaoyan.service.system.user.UserManager;
import com.jiaoyan.service.system.userRole.UserRoleManager;
import com.jiaoyan.util.Const;
import com.jiaoyan.util.DateUtil;
import com.jiaoyan.util.Jurisdiction;
import com.jiaoyan.util.LogUtil;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;
import com.jiaoyan.util.Tools;

@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseController {

	String menuUrl = "user/list.do"; // 菜单地址(权限用)

	@Resource(name = "userService")
	private UserManager userService;

	@Resource(name = "roleService")
	private RoleManager roleService;

	@Resource(name = "userRoleService")
	private UserRoleManager userRoleService;

	/*
	 * @Resource(name="deptUsertService") private DeptUserManager
	 * deptUsertService;
	 */

	@Resource(name = "omsslogService")
	private OmsslogManager omsslogService;

	/**
	 * 显示用户列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/list")
	public ModelAndView list(Page page) throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		pd.put("username", Jurisdiction.getUsername());
		String name = pd.getString("name"); // 关键词检索条件
		if (Tools.notEmpty(name)) {
			pd.put("name", name.trim());
		}
		page.setPd(pd);
		List<PageData> userList = userService.findUserListPage(page);
		mv.addObject("userList", userList); // 列出用户列表
		mv.addObject("QX", Jurisdiction.getQX()); // 按钮权限
		mv.setViewName("system/user/user_list");
		return mv;
	}

	/**
	 * 去新增用户页面
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/toAdd")
	public ModelAndView toAdd() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		mv.addObject("msg", "add");
		mv.addObject("pd", pd);
		List<Role> roleList = roleService.findRoleList();
		mv.addObject("roleList", roleList); // 返回角色列表
		mv.setViewName("system/user/user_edit");
		return mv;
	}

	/**
	 * 手机注册用户
	 */
	@RequestMapping(value = "/addCell_phone_number", method = RequestMethod.POST)
	public ModelAndView addCell_phone_number(
			@RequestParam(value = "cell_phone_number", required = false) String cell_phone_number,
			@RequestParam(value = "sendCode", required = false) String sendCode) {
		ModelAndView mView = this.getModelAndView();
		ReturnResult result = new ReturnResult();
		User user = new User();
		try {
			Session session = Jurisdiction.getSession();
			// String sessionSendCode = (String)
			// session.getAttribute(cell_phone_number);
			if (sendCode.equals("5678")) {

				User uu = userService.findUserByPhone(cell_phone_number);
				if (uu != null) {
					// 不保存，告知前台手机被注册
					result.setCode(Constants.STATUS_EXCEPTION_ERROR);
					result.setMsg(Constants.ERROR);
				} else {
					// 保存手机用户
					user.setUSER_ID(this.get32UUID());
					user.setUSERNAME(cell_phone_number);
					user.setNAME(cell_phone_number);
					user.setPASSWORD("666666");
					user.setPHONE(cell_phone_number);
					userService.save(user);
					result.setCode(Constants.STATUS_SUCCESS);
					result.setMsg(Constants.SUCCESS);
					result.setResult(user);

					session.setAttribute(Const.SESSION_USER, user); // 把用户信息放session中
					session.setAttribute(Const.SESSION_USERNAME, user.getNAME());

					// 添加用户角色表

					UserRole userRole = new UserRole();
					userRole.setUSERID(user.getUSER_ID());
					userRole.setROLEID("0c1aa39f673247bf840c077a9ab81ec6");
					userRoleService.save(userRole);
					
					//shiro加入身份验证
					Subject subject = SecurityUtils.getSubject(); 
				    UsernamePasswordToken token = new UsernamePasswordToken(user.getNAME(), user.getPASSWORD()); 
				    subject.login(token); 					
				}

			} else {
				// 不保存，告知前台随机码错误
				result.setCode(Constants.STATUS_EXCEPTION_ERROR);
				result.setMsg(Constants.ERROR);
			}
		} catch (Exception e) {
			e.printStackTrace();
			result.setCode(Constants.STATUS_EXCEPTION_ERROR);
			result.setMsg(Constants.ERROR);
		}

		mView.addObject("result", result);
		mView.setViewName("redirect:../login_toLogin");
		return mView;
	}
	
	/**
	 * 修改用户基本信息
	 */
	@RequestMapping(value="/updateUser", method = RequestMethod.POST)
	public ModelAndView updateUser(@ModelAttribute("form") User user) throws Exception{
		ModelAndView mView = this.getModelAndView();
		ReturnResult result = new ReturnResult();
		try {
			Session session = Jurisdiction.getSession();
			
			User uu = (User) session.getAttribute(Const.SESSION_USER);
			
			uu.setNAME(user.getNAME());
			uu.setUSERNAME(user.getUSERNAME());
			uu.setPASSWORD(user.getPASSWORD());
			uu.setSEX(user.getSEX());
			
			userService.edit(uu);
			session.setAttribute(Const.SESSION_USER, user); // 把用户信息放session中
			session.setAttribute(Const.SESSION_USERNAME, user.getNAME());			
			result.setCode(Constants.STATUS_SUCCESS);
			result.setMsg(Constants.SUCCESS);
			mView.addObject("user", user);
		} catch (Exception e) {
			e.printStackTrace();
			result.setCode(Constants.STATUS_EXCEPTION_ERROR);
			result.setMsg(Constants.ERROR);
		}		
		
		mView.addObject("result", result);
		mView.setViewName("nearbybooks/personal_user");
		return mView;
	}

	/**
	 * 保存用户
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/add")
	public ModelAndView add(@RequestParam(value = "USERNAME", required = false) String USERNAME,
			@RequestParam(value = "NAME", required = false) String NAME,
			@RequestParam(value = "SEX", required = false) String SEX,
			@RequestParam(value = "DEPT_ID", required = false) String DEPT_ID,
			@RequestParam(value = "PHONE", required = false) String PHONE,
			@RequestParam(value = "EMAIL", required = false) String EMAIL,
			@RequestParam(value = "TYPE", required = false) String TYPE,
			@RequestParam(value = "DESCRIPTION", required = false) String DESCRIPTION,
			@RequestParam(value = "numVal", required = false) String numVal) throws Exception {
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "add")) {
			return null;
		} // 校验权限
		logBefore(logger, Jurisdiction.getUsername() + "新增user");
		ModelAndView mv = this.getModelAndView();
		// PageData pd = this.getPageData();
		User user = new User();
		try {
			user.setUSER_ID(this.get32UUID());
			user.setUSERNAME(USERNAME);
			user.setNAME(NAME);
			user.setPASSWORD(new SimpleHash("SHA-1", "san", Const.DEFAULTPASSWORD).toString());// 密码加密
			user.setSEX(Integer.parseInt(SEX));
			user.setDEPT_ID(DEPT_ID);
			user.setPHONE(PHONE);
			user.setEMAIL(EMAIL);
			user.setTYPE(TYPE);
			user.setDESCRIPTION(DESCRIPTION);
			user.setCREATE_DATE(DateUtil.getTime());
			// 添加用户
			userService.save(user);

			// 添加组织机构用户表
			/*
			 * pd.put("ID", user.getUSER_ID()); pd.put("NAME", NAME);
			 * pd.put("PARENT_ID", DEPT_ID); pd.put("TYPE", 1);
			 * deptUsertService.save(pd);
			 */

			// 添加用户角色表
			String roleValue[] = numVal.split(",");
			for (int i = 0; i < roleValue.length; i++) {
				UserRole userRole = new UserRole();
				userRole.setUSERID(user.getUSER_ID());
				userRole.setROLEID(roleValue[i]);
				userRoleService.save(userRole);
			}

			// 业务日志
			omsslogService.save(LogUtil.setOmssLog("新增  " + user.getNAME() + " 用户", "用户模块", "0"));
			mv.addObject("msg", "success");
		} catch (Exception e) {
			logger.error(e.toString(), e);
			// 业务日志
			omsslogService.save(LogUtil.setOmssLog("新增  " + user.getNAME() + " 用户", "用户模块", "1"));
			mv.addObject("msg", "failed");
		}
		mv.setViewName("redirect:list");
		return mv;
	}

	/**
	 * 去修改用户页面
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/toEdit")
	public ModelAndView toEdit() throws Exception {
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try {
			String userId = pd.getString("USER_ID");
			pd = userService.findById(userId); // 用户信息
			/*
			 * PageData pageData=deptUsertService.findByUserId(userId);
			 * if(pageData!=null){ pd.put("DEPT_ID", pageData.getString("ID"));
			 * pd.put("DEPTNAME",pageData.getString("NAME")); }
			 */
			List<Role> roleList = roleService.findRoleList();
			List<Role> userRoleList = roleService.findByUserId(userId);
			mv.addObject("roleList", roleList); // 返回角色列表
			mv.addObject("userRoleList", userRoleList); // 返回用户角色列表
			mv.addObject("pd", pd);
			mv.addObject("msg", "edit");
			mv.setViewName("system/user/user_edit");
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**
	 * 初始化修改密码页面
	 * 
	 * @author LiMing
	 * @date 2017年5月11日 下午2:26:34
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/toUpdatePassword")
	public ModelAndView toUpdatePassword() throws Exception {
		ModelAndView mv = this.getModelAndView();
		User user = (User) SecurityUtils.getSubject().getSession().getAttribute("sessionUser");
		mv.addObject("user_id", user.getUSER_ID());
		mv.addObject("password", user.getPASSWORD());
		mv.setViewName("system/user/updateUser");
		return mv;
	}

	@RequestMapping(value = "/updatePassword")
	@ResponseBody
	public Map<String, Object> updatePassword() {
		Map<String, Object> map = new HashMap<String, Object>();
		User user = (User) SecurityUtils.getSubject().getSession().getAttribute("sessionUser");
		PageData pd = this.getPageData();
		try {
			if (!pd.getString("password").equals(user.getPASSWORD())) {
				String passwd = new SimpleHash("SHA-1", "san", pd.getString("password")).toString(); // 密码加密
				pd.put("password", passwd);
				userService.updatePassword(pd);
				map.put("msg", "success");
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put("msg", "error");
		}
		return map;
	}

	/**
	 * 修改用户
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/edit")
	public ModelAndView edit(@RequestParam(value = "USER_ID", required = false) String USER_ID,
			@RequestParam(value = "USERNAME", required = false) String USERNAME,
			@RequestParam(value = "NAME", required = false) String NAME,
			@RequestParam(value = "SEX", required = false) String SEX,
			@RequestParam(value = "DEPT_ID", required = false) String DEPT_ID,
			@RequestParam(value = "PHONE", required = false) String PHONE,
			@RequestParam(value = "EMAIL", required = false) String EMAIL,
			@RequestParam(value = "TYPE", required = false) String TYPE,
			@RequestParam(value = "DESCRIPTION", required = false) String DESCRIPTION,
			@RequestParam(value = "numVal", required = false) String numVal) throws Exception {
		if (!Jurisdiction.buttonJurisdiction(menuUrl, "add")) {
			return null;
		} // 校验权限
		logBefore(logger, Jurisdiction.getUsername() + "新增user");
		ModelAndView mv = this.getModelAndView();
		// PageData pd = this.getPageData();
		User user = new User();
		try {
			user.setUSER_ID(USER_ID);
			user.setUSERNAME(USERNAME);
			user.setNAME(NAME);
			user.setSEX(Integer.parseInt(SEX));
			user.setDEPT_ID(DEPT_ID);
			user.setPHONE(PHONE);
			user.setEMAIL(EMAIL);
			user.setTYPE(TYPE);
			user.setDESCRIPTION(DESCRIPTION);
			// 修改用户
			userService.edit(user);

			// 修改组织机构用户表
			/*
			 * pd.put("ID", USER_ID); pd.put("NAME", NAME); pd.put("PARENT_ID",
			 * DEPT_ID); pd.put("TYPE", 1);
			 * if(null==deptUsertService.findById(USER_ID)){
			 * deptUsertService.save(pd); }else{ deptUsertService.edit(pd); }
			 */

			// 修改用户角色表
			userRoleService.deleteUserRole(USER_ID);
			String roleValue[] = numVal.split(",");
			for (int i = 0; i < roleValue.length; i++) {
				UserRole userRole = new UserRole();
				userRole.setUSERID(user.getUSER_ID());
				userRole.setROLEID(roleValue[i]);
				userRoleService.save(userRole);
			}

			// 业务日志
			omsslogService.save(LogUtil.setOmssLog("修改  " + user.getNAME() + " 用户", "用户模块", "0"));
			mv.addObject("msg", "success");
		} catch (Exception e) {
			logger.error(e.toString(), e);
			// 业务日志
			omsslogService.save(LogUtil.setOmssLog("修改   " + user.getNAME() + " 用户", "用户模块", "1"));
			mv.addObject("msg", "failed");
		}
		mv.setViewName("redirect:list");
		return mv;
	}

	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> deleteContest() throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		logBefore(logger, Jurisdiction.getUsername() + "删除ClassTime");
		PageData pd = this.getPageData();
		try {
			// 添加上课时间
			userService.deleteUser((String) pd.get("id"));
			userRoleService.deleteUserRole((String) pd.get("id"));

			map.put("msg", "true");
			// 业务日志
			omsslogService.save(LogUtil.setOmssLog("删除 " + pd.getString("name") + " 用户", "用户模块", "0"));
		} catch (Exception e) {
			// TODO: handle exception
			logger.error(e.toString(), e);
			map.put("msg", "false");
			// 业务日志
			omsslogService.save(LogUtil.setOmssLog("删除 " + pd.getString("name") + " 用户", "用户模块", "1"));
		}
		return map;
	}
}
