package com.jiaoyan.controller.nearbybooks.personal;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.entity.nearbybooks.Book;
import com.jiaoyan.entity.nearbybooks.UserAddress;
import com.jiaoyan.entity.system.User;
import com.jiaoyan.service.nearbybooks.book.BookManager;
import com.jiaoyan.service.nearbybooks.userAddress.UserAddressService;
import com.jiaoyan.service.system.user.UserManager;
import com.jiaoyan.util.Const;
import com.jiaoyan.util.Jurisdiction;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;

@Controller
@RequestMapping(value = "/personal")
public class PersonalController extends BaseController {
	@Resource
	private BookManager bookService;
	
	@Resource
	private UserManager userService;	
	
	@Resource(name="userAddressServiceImpl")
	private UserAddressService userAddressService;	
	

	@RequestMapping(value = "/address")
	public ModelAndView address(Page page) throws Exception {
		
		ModelAndView mv = this.getModelAndView();
		Session session = Jurisdiction.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		List<UserAddress> addressList = userAddressService.getUserAddressList(user.getUSER_ID());
		mv.addObject("addressList", addressList);         //列出用户地址列表		
		mv.setViewName("nearbybooks/personal_address");
		return mv;
	}
	
	@RequestMapping(value = "/mybook")
	public ModelAndView mybook(Page page) throws Exception {
		
		ModelAndView mv = this.getModelAndView();
		List<PageData> bookList = bookService.listListPageList(page);
		mv.addObject("bookList", bookList);
		mv.setViewName("nearbybooks/personal_mybook");
		return mv;
	}
	
	@RequestMapping(value = "/shopping")
	public ModelAndView shopping(Page page) throws Exception {
		
		ModelAndView mv = this.getModelAndView();
		mv.setViewName("nearbybooks/personal_shopping");
		return mv;
	}
	
	@RequestMapping(value = "/user")
	public ModelAndView user(Page page) throws Exception {
		
		//查询当前登录人的基本信息
		Session session = Jurisdiction.getSession();
		User uu = (User) session.getAttribute(Const.SESSION_USER);
		User user = userService.findUserByPhone(uu.getPHONE());
		
		ModelAndView mv = this.getModelAndView();
		mv.addObject("user", user);
		mv.setViewName("nearbybooks/personal_user");
		return mv;
	}
}
