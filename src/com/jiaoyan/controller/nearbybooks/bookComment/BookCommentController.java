package com.jiaoyan.controller.nearbybooks.bookComment;


import java.util.Date;

import javax.annotation.Resource;

import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.entity.nearbybooks.BookComment;
import com.jiaoyan.entity.system.User;
import com.jiaoyan.model.Constants;
import com.jiaoyan.model.ReturnResult;
import com.jiaoyan.service.nearbybooks.bookComment.BookCommentManager;
import com.jiaoyan.util.Const;
import com.jiaoyan.util.DateUtil;
import com.jiaoyan.util.Jurisdiction;

/**
 *
 */
@Controller
@RequestMapping(value = "/bookComment")
public class BookCommentController extends BaseController{

	@Resource
	private BookCommentManager bookCommentService;

	@RequestMapping(value="/add")
	@ResponseBody
	public ReturnResult add(@RequestParam("book_id") String book_id,
			@RequestParam("content") String content) throws Exception{
		ReturnResult result = new ReturnResult();
		try {
			
			Session session = Jurisdiction.getSession();
			User uu = (User) session.getAttribute(Const.SESSION_USER);			
			
			BookComment bookComment = new BookComment();
			bookComment.setBook_id(Integer.parseInt(book_id));
			bookComment.setContent(content);
			bookComment.setDate_comment(DateUtil.DateToStr(new Date()));
			bookComment.setUser_id(uu.getUSER_ID());
			bookCommentService.save(bookComment);
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
