package com.jiaoyan.controller.system.department;

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
import com.jiaoyan.service.admin.omsslog.OmsslogManager;
import com.jiaoyan.service.system.department.DepartmentManager;
import com.jiaoyan.service.system.department.DeptUserManager;
import com.jiaoyan.util.AppUtil;
import com.jiaoyan.util.Jurisdiction;
import com.jiaoyan.util.LogUtil;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;
import com.jiaoyan.util.Tools;

/** 
 * 说明：组织机构
 */
@Controller
@RequestMapping(value="/department")
public class DepartmentController extends BaseController {
	
	String menuUrl = "department/list.do"; //菜单地址(权限用)
	
	@Resource(name="departmentService")
	private DepartmentManager departmentService;
	
	@Resource(name="deptUsertService")
	private DeptUserManager deptUsertService;
	
	@Resource(name="omsslogService")
	private OmsslogManager omsslogService;
	
	
	/**
	 * 显示列表zTree
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listAllDepartment")
	public ModelAndView listAllDepartment(Model model,String DEPARTMENT_ID)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
		    DEPARTMENT_ID=Tools.isEmpty(DEPARTMENT_ID)?"0":DEPARTMENT_ID;
			JSONArray arr = JSONArray.fromObject(departmentService.findAllListDepartment("0"));
			String json = arr.toString();
			model.addAttribute("zTreeNodes", json);
			model.addAttribute("DEPARTMENT_ID", DEPARTMENT_ID);
			mv.setViewName("system/department/department_ztree");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 显示列表zTree
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/listAllzTree")
	public ModelAndView listAllDepartment(Model model)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try{
			JSONArray arr = JSONArray.fromObject(departmentService.findAllListDepartment("0"));
			String json = arr.toString();
			model.addAttribute("zTreeNodes", json);
			mv.setViewName("system/department/listAllzTree");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}

	/**列表
	 * @param page
	 * @throws Exception
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Model model) throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"列表department");
		ModelAndView mv = this.getModelAndView();
		Page page=new Page();
		PageData pd = this.getPageData();
		String DEPARTMENT_ID=pd.getString("DEPARTMENT_ID");
	    DEPARTMENT_ID=Tools.isEmpty(DEPARTMENT_ID)?"0":DEPARTMENT_ID;
		pd.put("DEPARTMENT_ID", DEPARTMENT_ID);					    //上级ID
		page.setPd(pd);
		List<PageData>	deptList = departmentService.list(page);	//列出Department列表
		mv.addObject("DEPARTMENT_ID",DEPARTMENT_ID);				
		mv.addObject("deptList", deptList);
		mv.addObject("QX",Jurisdiction.getQX());				    //按钮权限
		mv.setViewName("system/department/department_list");
		return mv;
	}
	
	
	/**去新增页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/toAdd")
	public ModelAndView toAdd()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		String DEPARTMENT_ID=pd.getString("DEPARTMENT_ID");
	    DEPARTMENT_ID=Tools.isEmpty(DEPARTMENT_ID)?"0":DEPARTMENT_ID;
		mv.addObject("fd",departmentService.findById(DEPARTMENT_ID));		//传入上级所有信息
		mv.addObject("DEPARTMENT_ID", DEPARTMENT_ID);			          //传入ID，作为子级ID用
		mv.setViewName("system/department/department_edit");
		mv.addObject("msg", "save");
		return mv;
	}
	
	
	/**新增组织机构
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/save")
	public ModelAndView save() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"新增department");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try {
			
			pd.put("DEPARTMENT_ID", this.get32UUID());	//主键
			departmentService.save(pd);
			
			//部门用户表
			PageData pageData = new PageData();
			pageData.put("ID", pd.getString("DEPARTMENT_ID"));
			pageData.put("NAME", pd.getString("NAME"));
			pageData.put("PARENT_ID", pd.getString("PARENT_ID"));
			pageData.put("TYPE", "0");
			deptUsertService.save(pageData);
			
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("新增  "+pd.getString("NAME")+" 组织机构","组织机构模块","0"));
		} catch (Exception e) {
			logger.error(e.toString(), e);
			mv.addObject("msg","failed");
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("新增  "+pd.getString("NAME")+" 组织机构","组织机构模块","1"));
		}
		mv.addObject("msg","success");
		mv.setViewName("result");
		return mv;
	}
	
	
	/**去编辑页面
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/toEdit")
	public ModelAndView toEdit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		String DEPARTMENT_ID=pd.getString("DEPARTMENT_ID");
	    DEPARTMENT_ID=Tools.isEmpty(DEPARTMENT_ID)?"0":DEPARTMENT_ID;
		mv.addObject("pd",departmentService.findById(DEPARTMENT_ID));		           //传入当前所有信息
		mv.addObject("fd",departmentService.findById(pd.getString("PARENT_ID")));	   //传入上级所有信息
		mv.addObject("DEPARTMENT_ID", DEPARTMENT_ID);			                       //传入ID，作为子级ID用
		mv.setViewName("system/department/department_edit");
		mv.addObject("msg", "edit");
		return mv;
	}
	
	
	/**修改组织机构
	 * @param
	 * @throws Exception
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit() throws Exception{
		logBefore(logger, Jurisdiction.getUsername()+"修改department");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = this.getPageData();
		try {
			departmentService.edit(pd);
			
			//部门用户表
			PageData pageData = new PageData();
			pageData.put("ID", pd.getString("DEPARTMENT_ID"));
			pageData.put("NAME", pd.getString("NAME"));
			pageData.put("PARENT_ID", pd.getString("PARENT_ID"));
			pageData.put("TYPE", "0");
			if(deptUsertService.findById(pd.getString("DEPARTMENT_ID"))==null){
				deptUsertService.save(pageData);
			}else{
				deptUsertService.edit(pageData);	
			}
			
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("修改  "+pd.getString("NAME")+" 组织机构","组织机构模块","0"));
		} catch (Exception e) {
			logger.error(e.toString(), e);
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("修改  "+pd.getString("NAME")+" 组织机构","组织机构模块","1"));
		}
		mv.addObject("msg","success");
		mv.setViewName("result");
		return mv;
	}
	
	
	/**
	 * 删除组织机构
	 * @param
	 * @throws Exception 
	 */
	@RequestMapping(value="/deleteDept")
	@ResponseBody
	public Object deleteDept(@RequestParam String DEPARTMENT_ID) throws Exception{
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return null;} //校验权限
		logBefore(logger, Jurisdiction.getUsername()+"删除department");
		Map<String,String> map = new HashMap<String,String>();
		PageData pd = new PageData();
		
		String result = "success";
		try {
			pd.put("DEPARTMENT_ID", DEPARTMENT_ID);
			if(departmentService.findListByPId(DEPARTMENT_ID).size()>0){//判断是否有子级，是：不允许删除
				result = "fail";
			}else{
				pd=departmentService.findById(DEPARTMENT_ID);
				departmentService.delete(pd);	//执行删除
				//部门用户表
				PageData pageData = new PageData();
				pageData.put("ID", DEPARTMENT_ID);
				deptUsertService.delete(pageData);	//执行删除
			}	
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("删除  "+pd.getString("NAME")+" 组织机构","组织机构模块","0"));
		} catch (Exception e) {
			logger.error(e.toString(), e);
			//业务日志
			omsslogService.save(LogUtil.setOmssLog("删除  "+pd.getString("NAME")+" 组织机构","组织机构模块","1"));
		}

		map.put("result", result);
		return AppUtil.returnObject(map);
	}
}
