package com.jiaoyan.controller.nearbybooks.list;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.util.Page;

@Controller
@RequestMapping(value = "/list")
public class ListController extends BaseController {

	@RequestMapping(value = "/jsp")
	public ModelAndView list(Page page) throws Exception {
		
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("nearbybooks/list");
		return mv;
	}
}
