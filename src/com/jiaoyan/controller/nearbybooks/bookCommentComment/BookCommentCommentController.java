package com.jiaoyan.controller.nearbybooks.bookCommentComment;


import java.util.Date;

import javax.annotation.Resource;

import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.entity.nearbybooks.BookCommentComment;
import com.jiaoyan.entity.system.User;
import com.jiaoyan.model.Constants;
import com.jiaoyan.model.ReturnResult;
import com.jiaoyan.service.nearbybooks.bookCommentComment.BookCommentCommentManager;
import com.jiaoyan.util.Const;
import com.jiaoyan.util.DateUtil;
import com.jiaoyan.util.Jurisdiction;

/**
 *
 */
@Controller
@RequestMapping(value = "/bookCommentComment")
public class BookCommentCommentController extends BaseController{

	@Resource
	private BookCommentCommentManager bookCommentCommentService;

	@RequestMapping(value="/add")
	@ResponseBody
	public ReturnResult add(@RequestParam("book_comment_id") int book_comment_id,
			@RequestParam("user_id") String user_id,
			@RequestParam("content") String content) throws Exception{
		ReturnResult result = new ReturnResult();
		try {
			
			Session session = Jurisdiction.getSession();
			User uu = (User) session.getAttribute(Const.SESSION_USER);			
			
			BookCommentComment bookCommentComment = new BookCommentComment();
			bookCommentComment.setBook_comment_id(book_comment_id);
			bookCommentComment.setComment_content(content);
			bookCommentComment.setUser_id(user_id);
			bookCommentComment.setComment_time(DateUtil.DateToStr(new Date()));
			bookCommentComment.setComment_user(uu.getUSER_ID());
			
			bookCommentCommentService.save(bookCommentComment);
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
