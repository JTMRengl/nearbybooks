package com.jiaoyan.controller.system.menu;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.entity.system.Menu;
import com.jiaoyan.service.admin.omsslog.OmsslogManager;
import com.jiaoyan.service.system.menu.MenuManager;
import com.jiaoyan.util.AppUtil;
import com.jiaoyan.util.Jurisdiction;
import com.jiaoyan.util.LogUtil;
import com.jiaoyan.util.PageData;
import com.jiaoyan.util.Tools;

/** 
 * 类名称：MenuController 菜单处理
 * @version
 */
@Controller
@RequestMapping(value="/menu")
public class MenuController extends BaseController {
	
	String menuUrl = "menu/list.do"; //菜单地址(权限用)
	@Resource(name="menuService")
	private MenuManager menuService;
	@Resource(name="omsslogService")
	private OmsslogManager omsslogService;
	
	/**
	 * 显示菜单列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list")
	public ModelAndView list()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try{
			String MENU_ID=pd.getString("MENU_ID");
			MENU_ID=Tools.isEmpty(MENU_ID)?"0":MENU_ID;
			pd=menuService.findById(MENU_ID);
			List<Menu> menuList = menuService.findListByPId(MENU_ID);
			mv.addObject("MENU_ID", MENU_ID);
			mv.addObject("menuList", menuList);
			mv.addObject("pd", pd);
			mv.addObject("QX",Jurisdiction.getQX());	//按钮权限
			mv.setViewName("system/menu/menu_list");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	
	/**
	 * 显示菜单列表zTree(菜单管理)
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listAllMenu")
	public ModelAndView listAllMenu(Model model,String MENU_ID)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			MENU_ID=Tools.isEmpty(MENU_ID)?"0":MENU_ID;
			JSONArray arr = JSONArray.fromObject(menuService.findAllListMenu("0"));
			String json = arr.toString();
			model.addAttribute("zTreeNodes", json);
			mv.addObject("MENU_ID",MENU_ID);
			mv.setViewName("system/menu/menu_ztree");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 删除菜单
	 * @param MENU_ID
	 * @param out
	 */
	@RequestMapping(value="/deleteMenu")
	@ResponseBody
	public Object deleteMenu(@RequestParam String MENU_ID)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"删除菜单");
		Map<String,String> map = new HashMap<String,String>();
		String result = "";
		PageData pd=new PageData();
		try{
           if(menuService.findListByPId(MENU_ID).size()>0){
        	   result = "fail";
           }else{
        	   pd=menuService.findById(MENU_ID);
        	   menuService.deleteMenu(MENU_ID); //删除菜单
        	   result = "success";
           }
		   //业务日志
		   omsslogService.save(LogUtil.setOmssLog("删除  "+pd.getString("MENU_NAME")+" 菜单项","菜单模块","0"));
		} catch(Exception e){
			logger.error(e.toString(), e);
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("删除  "+pd.getString("MENU_NAME")+" 菜单项","菜单模块","1"));
		}
		map.put("result", result);
		return AppUtil.returnObject(map);
	}
	
	
	
	/**
	 * 请求新增菜单页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/toAdd")
	public ModelAndView toAdd()throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			PageData pd = this.getPageData();
			String MENU_ID=pd.getString("MENU_ID");
			MENU_ID=Tools.isEmpty(MENU_ID)?"0":MENU_ID;
			mv.addObject("fd", menuService.findById(MENU_ID));	//传入父菜单所有信息
			mv.addObject("MENU_ID", MENU_ID);					//传入菜单ID，作为子菜单的父菜单ID用
			mv.addObject("MSG", "add");							//执行状态 add 为添加
			mv.setViewName("system/menu/menu_edit");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}	
	
	/**
	 * 保存菜单信息
	 * @param menu
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/add")
	public ModelAndView add(Menu menu)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"保存菜单");
		ModelAndView mv = this.getModelAndView();
		try{
			PageData pd = this.getPageData();
			menu.setMENU_ID(String.valueOf(menuService.findMaxId()));
			menu.setMENU_ICON("menu-icon fa fa-leaf black");    //默认菜单图标
			menu.setMENU_ORDER(menuService.findMaxOrder(pd.getString("PARENT_ID")));  //默认菜单序列值
			menuService.save(menu); //保存菜单
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("新增  "+menu.getMENU_NAME()+" 菜单项","菜单模块","0"));
		} catch(Exception e){
			logger.error(e.toString(), e);
			mv.addObject("msg","failed");
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("新增  "+menu.getMENU_NAME()+" 菜单项","菜单模块","1"));
		}
		mv.setViewName("redirect:listAllMenu?MENU_ID="+menu.getPARENT_ID()); //保存成功跳转到列表页面
		return mv;
	}
	
	/**
	 * 请求编辑菜单页面
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/toEdit")
	public ModelAndView toEdit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try{
			String MENU_ID=pd.getString("MENU_ID");
			MENU_ID=Tools.isEmpty(MENU_ID)?"0":MENU_ID;
			pd = menuService.findById(MENU_ID);				                       
			String pId=pd.get("PARENT_ID").toString();                  //父节点id
			mv.addObject("fd", menuService.findById(pId));	            //父节点
			mv.addObject("pd", pd);		                                //放入视图容器
			mv.addObject("MSG", "edit");
			mv.setViewName("system/menu/menu_edit");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**
	 * 保存编辑
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit(Menu menu)throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"修改菜单");
		ModelAndView mv = this.getModelAndView();
		try{
			menuService.edit(menu);
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("修改  "+menu.getMENU_NAME()+" 菜单项","菜单模块","0"));
		} catch(Exception e){
			logger.error(e.toString(), e);
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("修改 "+menu.getMENU_NAME()+" 菜单项","菜单模块","1"));
		}
		mv.setViewName("redirect:listAllMenu?MENU_ID="+menu.getPARENT_ID()); //保存成功跳转到列表页面
		return mv;
	}
	
	/**
	 * 请求编辑菜单图标页面
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/toEditIcon")
	public ModelAndView toEditIcon(String MENU_ID)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			PageData pd = this.getPageData();
			pd.put("MENU_ID",MENU_ID);
			mv.addObject("pd", pd);
			mv.setViewName("system/menu/menu_icon");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 保存菜单图标 
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/editIcon")
	public ModelAndView editIcon()throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"修改菜单图标");
		ModelAndView mv = this.getModelAndView();
		try{
			PageData pd = this.getPageData();
			pd = menuService.editIcon(pd);
			mv.addObject("msg","success");
		} catch(Exception e){
			logger.error(e.toString(), e);
			mv.addObject("msg","failed");
		}
		mv.setViewName("result");
		return mv;
	}
}
