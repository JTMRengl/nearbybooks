package com.jiaoyan.controller.system.userRole;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.service.admin.omsslog.OmsslogManager;
import com.jiaoyan.service.system.userRole.UserRoleManager;

@Controller
@RequestMapping(value="/userRole")
public class UserRoleController extends BaseController {
	
	@Resource(name="userRoleService")
	private UserRoleManager userRoleService;
	
	@Resource(name="omsslogService")
	private OmsslogManager omsslogService;
	
}
