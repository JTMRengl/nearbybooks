package com.jiaoyan.controller.nearbybooks.address;

import javax.annotation.Resource;

import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.entity.nearbybooks.UserAddress;
import com.jiaoyan.entity.system.User;
import com.jiaoyan.model.Constants;
import com.jiaoyan.model.ReturnResult;
import com.jiaoyan.service.nearbybooks.userAddress.UserAddressService;
import com.jiaoyan.util.Const;
import com.jiaoyan.util.Jurisdiction;

/**
 *
 */
@Controller
@RequestMapping(value = "/address")
public class AddressController extends BaseController{
	@Resource(name="userAddressServiceImpl")
	private UserAddressService userAddressService;

	
	/**
	 * 保存用户地址
	 * rengl
	 * 2017-07-04 15:35
	 */
	@RequestMapping(value="/addAddress", method = RequestMethod.POST)
	public ModelAndView addAddress(@ModelAttribute("form") UserAddress userAddress) throws Exception{
		ModelAndView mView = this.getModelAndView();
		ReturnResult result = new ReturnResult();
		try {
			Session session = Jurisdiction.getSession();
			User user = (User) session.getAttribute(Const.SESSION_USER);
			userAddress.setUSER_ID(user.getUSER_ID());
			//如果没id调用添加,有id调用修改
			if(userAddress.getId() == 0){
				userAddressService.save(userAddress);
			}else{
				userAddressService.update(userAddress);
			}
			result.setCode(Constants.STATUS_SUCCESS);
			result.setMsg(Constants.SUCCESS);
			result.setResult(userAddress);
		} catch (Exception e) {
			e.printStackTrace();
			result.setCode(Constants.STATUS_EXCEPTION_ERROR);
			result.setMsg(Constants.ERROR);
		}		
		
		mView.addObject("result", result);
		mView.setViewName("redirect:../personal/address");
		return mView;
	}
	
	/**
	 * 根据id查询用户地址
	 * rengl
	 * 2017-07-13 09:21
	 */
	@RequestMapping(value="/getUserAddressById")
	@ResponseBody
	public ReturnResult getUserAddressById(@RequestParam("id") String id) throws Exception{
		ReturnResult result = new ReturnResult();
		try {
			UserAddress uAddress = userAddressService.getUserAddressById(id);
			result.setResult(uAddress);
			result.setCode(Constants.STATUS_SUCCESS);
			result.setMsg(Constants.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			result.setCode(Constants.STATUS_EXCEPTION_ERROR);
			result.setMsg(Constants.ERROR);
		}		
		return result;
	}	
	
	/**
	 * 删除单个用户地址
	 * rengl
	 * 2017-07-12 15:49
	 */
	@RequestMapping(value="/deleteUserAddressById")
	@ResponseBody
	public ReturnResult deleteUserAddressById(@RequestParam("id") String id) throws Exception{
		ReturnResult result = new ReturnResult();
		try {
			userAddressService.deleteUserAddressById(id);
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
