package com.jiaoyan.controller.system.register;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.model.Constants;
import com.jiaoyan.model.ReturnResult;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.SendMsg_webchinese;

/**
 *
 */
@Controller
@RequestMapping(value = "/register")
public class RegisterController extends BaseController{
	
	@RequestMapping(value = "/jsp")
	public ModelAndView list(Page page) throws Exception {
		
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("system/index/register");
		return mv;
	}	
		
	
	/**
	 * 发送短信验证码
	 */
	@RequestMapping(value="/sendCode")
	@ResponseBody
	public ReturnResult sendCode(@RequestParam("cell_phone_number") String cell_phone_number) throws Exception{
		ReturnResult result = new ReturnResult();
		try {
			//调用工具类发送验证码
			SendMsg_webchinese.sendCode(cell_phone_number);
			result.setCode(Constants.STATUS_SUCCESS);
			result.setMsg(Constants.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			result.setCode(Constants.STATUS_EXCEPTION_ERROR);
			result.setMsg(Constants.ERROR);
		}		
		return result;
	}	
}
