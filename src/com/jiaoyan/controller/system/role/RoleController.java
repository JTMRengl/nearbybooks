package com.jiaoyan.controller.system.role;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.entity.system.Role;
import com.jiaoyan.entity.system.User;
import com.jiaoyan.model.MenuTree;
import com.jiaoyan.service.admin.omsslog.OmsslogManager;
import com.jiaoyan.service.system.menu.MenuManager;
import com.jiaoyan.service.system.role.RoleManager;
import com.jiaoyan.service.system.user.UserManager;
import com.jiaoyan.util.AppUtil;
import com.jiaoyan.util.Jurisdiction;
import com.jiaoyan.util.LogUtil;
import com.jiaoyan.util.PageData;
import com.jiaoyan.util.RightsHelper;
import com.jiaoyan.util.Tools;

@Controller
@RequestMapping(value="/role")
public class RoleController extends BaseController {

	String menuUrl = "role.do"; //菜单地址(权限用)
	@Resource(name="menuService")
	private MenuManager menuService;
	@Resource(name="roleService")
	private RoleManager roleService;
	@Resource(name="userService")
	private UserManager userService;
	@Resource(name="omsslogService")
	private OmsslogManager omsslogService;
	
	/** 进入权限首页
	 * @param 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/toList")
	public ModelAndView list()throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			List<Role> roleList = roleService.findRoleList();
			mv.addObject("roleList", roleList);
			mv.addObject("QX",Jurisdiction.getQX());	//按钮权限
			System.out.println(Jurisdiction.getQX());
			mv.setViewName("system/role/role_list");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**去新增页面
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/toAdd")
	public ModelAndView toAdd(){
		ModelAndView mv = this.getModelAndView();
		try{
			PageData pd = this.getPageData();
			mv.addObject("msg", "add");
			mv.setViewName("system/role/role_edit");
			mv.addObject("pd", pd);
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**保存新增角色
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public ModelAndView add()throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"新增角色");
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try{
			pd.put("ROLE_ID", this.get32UUID());				//主键
			pd.put("RIGHTS", "");   //菜单权限
			pd.put("ADD_QX", "0");	//新增权限
			pd.put("DEL_QX", "0");	//删除权限
			pd.put("EDIT_QX", "0");	//修改权限
			pd.put("CHA_QX", "0");	//查看权限
			roleService.save(pd);
			
			//业务日志
		    omsslogService.save(LogUtil.setOmssLog("新增  "+pd.getString("ROLE_NAME")+" 角色项","角色模块","0"));
		} catch(Exception e){
			logger.error(e.toString(), e);
			mv.addObject("msg","failed");
			//业务日志
		    omsslogService.save(LogUtil.setOmssLog("新增  "+pd.getString("ROLE_NAME")+" 角色项","角色模块","1"));
		}
		mv.setViewName("result");
		return mv;
	}
	
	
	/**请求编辑
	 * @param ROLE_ID
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/toEdit")
	public ModelAndView toEdit(String ROLE_ID)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try{
			Role role = roleService.findById(ROLE_ID);
			mv.addObject("msg", "edit");
			mv.addObject("role", role);
			mv.addObject("pd", pd);
			mv.setViewName("system/role/role_edit");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**保存修改
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit()throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"修改角色");
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try{
			roleService.edit(pd);
			mv.addObject("msg","success");
			
			//业务日志
		    omsslogService.save(LogUtil.setOmssLog("修改 "+pd.getString("ROLE_NAME")+" 角色项","角色模块","0"));
		} catch(Exception e){
			logger.error(e.toString(), e);
			mv.addObject("msg","failed");
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("修改 "+pd.getString("ROLE_NAME")+" 角色项","角色模块","1"));
		}
		mv.setViewName("result");
		return mv;
	}
	
	
	/**删除角色
	 * @param ROLE_ID
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/deleteRole")
	@ResponseBody
	public Object deleteRole(@RequestParam String ROLE_ID)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"删除角色");
		Map<String,String> map = new HashMap<String,String>();
		Role role=roleService.findById(ROLE_ID);
		String result = "";
		try{
			List<User> userList=userService.findListByRoleId(ROLE_ID);
			if(userList.size()>0){
				result="fail";	
			}else{
				roleService.deleteRole(ROLE_ID);
				result="success";	
			}
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("删除 "+role.getROLE_NAME()+" 角色项","角色模块","0"));
		} catch(Exception e){
			logger.error(e.toString(), e);
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("删除 "+role.getROLE_NAME()+" 角色项","角色模块","1"));
		}
		map.put("result", result);
		return AppUtil.returnObject(map);
	}
	
	/**
	 * 请求角色按钮授权页面(增删改查)
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/menuRights")
	public ModelAndView listAllMenu(Model model,
									@RequestParam String ROLE_ID,
									@RequestParam String MSG)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			Role role = roleService.findById(ROLE_ID);			          //根据角色ID获取角色对象
			String roleRights = "";
			if("add_qx".equals(MSG)){
				roleRights = role.getADD_QX();	//新增权限
			}else if("del_qx".equals(MSG)){
				roleRights = role.getDEL_QX();	//删除权限
			}else if("edit_qx".equals(MSG)){
				roleRights = role.getEDIT_QX();	//修改权限
			}else if("cha_qx".equals(MSG)){
				roleRights = role.getCHA_QX();	//查看权限
			}else if("rights".equals(MSG)){
				roleRights=role.getRIGHTS();
			}
			List<MenuTree> menuList = menuService.findAllListMenuQX("0"); //获取所有菜单
			menuList = this.readMenu(menuList, roleRights);			      //根据角色权限处理菜单权限状态(递归处理)
			JSONArray arr = JSONArray.fromObject(menuList);
			String json = arr.toString();
			json = json.replaceAll("MENU_ID", "id")
					.replaceAll("PARENT_ID", "pId")
					.replaceAll("MENU_NAME", "name")
					.replaceAll("subMenu", "nodes")
					.replaceAll("hasMenu", "checked");
			model.addAttribute("zTreeNodes", json);
			mv.addObject("ROLE_ID",ROLE_ID);
			mv.addObject("msg", MSG);
			mv.setViewName("system/role/menuRights");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	
	/**角色菜单权限
	 * @param ROLE_ID 角色ID
	 * @param menuIds 菜单ID集合
	 * @param out
	 * @throws Exception
	 */
	@RequestMapping(value="/updateMenuRights")
	public void updateMenuRights(@RequestParam String ROLE_ID,
			                    @RequestParam String menuIds,
			                    @RequestParam String MSG,
			                    PrintWriter out)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"修改菜单权限");
		PageData pd = new PageData();
		try{
			String rights=null;
			if(null != menuIds && !"".equals(menuIds.trim())){
			    rights = RightsHelper.sumRights(Tools.str2StrArray(menuIds)).toString();//用菜单ID做权处理
			}else{
				rights="";
			}
			pd.put("ROLE_ID", ROLE_ID);
			pd.put("value", rights);
			pd.put("col", MSG.toUpperCase());
			roleService.updateRoleRights(pd);	
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
	}
	
	/**根据角色权限处理权限状态(递归处理)
	 * @param menuList：传入的总菜单
	 * @param roleRights：加密的权限字符串
	 * @return
	 */
	public List<MenuTree> readMenu(List<MenuTree> menuList,String roleRights){
		for(int i=0;i<menuList.size();i++){
			menuList.get(i).setHasMenu(RightsHelper.testRights(roleRights, menuList.get(i).getMENU_ID()));
			this.readMenu(menuList.get(i).getSubMenu(), roleRights);					//是：继续排查其子菜单
		}
		return menuList;
	}
}
