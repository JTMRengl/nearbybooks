package com.jiaoyan.controller.nearbybooks.book;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.session.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.jiaoyan.controller.base.BaseController;
import com.jiaoyan.entity.nearbybooks.Book;
import com.jiaoyan.entity.nearbybooks.BookComment;
import com.jiaoyan.entity.nearbybooks.UserAddress;
import com.jiaoyan.entity.nearbybooks.UserBook;
import com.jiaoyan.entity.system.User;
import com.jiaoyan.model.Constants;
import com.jiaoyan.model.Distance;
import com.jiaoyan.model.ReturnResult;
import com.jiaoyan.service.nearbybooks.book.BookManager;
import com.jiaoyan.service.nearbybooks.bookComment.BookCommentManager;
import com.jiaoyan.service.nearbybooks.booktags.BookTagsManager;
import com.jiaoyan.service.nearbybooks.userAddress.UserAddressService;
import com.jiaoyan.service.nearbybooks.userbook.UserBookManager;
import com.jiaoyan.util.Const;
import com.jiaoyan.util.Jurisdiction;
import com.jiaoyan.util.Page;
import com.jiaoyan.util.PageData;
import com.jiaoyan.util.Util;

/**
 *
 */
@Controller
@RequestMapping(value = "/book")
public class BookController extends BaseController{
	@Resource
	private BookManager bookService;
	@Resource
	private BookCommentManager bookCommentService;
	@Resource
	private BookTagsManager bookTagsService;
	@Resource
	private UserBookManager userBookService;
	@Resource
	private UserAddressService userAddressService;


	/**新增图书
	 * @return 个人空间图书展示页面
	 * 
	 * Mr.Zhao
	 * 2017-06-27 22:01:26
	 * @throws Exception
	 */
	@RequestMapping(value="/toAddBook", method = RequestMethod.POST)
	public ModelAndView saveBook(@RequestParam(value = "isbn", required = false) String isbn,
			@RequestParam(value = "price_hire", required = false) int price_hire,
			@RequestParam(value = "price_sell", required = false) int price_sell,
			@RequestParam(value = "reasons", required = false) String reasons)throws Exception{
		ModelAndView mv = this.getModelAndView();
		Book book = new Book();
		String joinstring = Util.get("https://api.douban.com/v2/book/isbn/"
				+ isbn.toString().trim());
		
		if (joinstring != null && !"".equals(joinstring)) {
			JSONObject jb = JSONObject.parseObject(joinstring);

			// 添加作者
			JSONArray jbs1 = jb.getJSONArray("author");
			String author = "";
			for (Object ob : jbs1) {
				author += (ob.toString()+",");
			}
			book.setAuthor(author);
			// 封面图(大图)
			JSONObject tu = JSONObject.parseObject(jb.getString("images"));
			book.setIsbn(isbn);
			book.setCover_img(tu.getString("large"));
			book.setReview(1);
			book.setUpload_time(new Date());
			String introducation = jb.getString("summary");
			if (introducation.length() >= 500) {
				introducation =  introducation.substring(0, 490) + "...";
			}
			// 简介
			book.setIntroducation(introducation);
			book.setBook_name(jb.getString("title"));
			book.setDelete_flag(0);
			book.setReasons(reasons);
			bookService.save(book);
			//添加用户和书关联和价格
			Session session = Jurisdiction.getSession();
			User user =  (User) session.getAttribute(Const.SESSION_USER);
			UserBook userbook = new UserBook();
			userbook.setBook_id(book.getId());
			userbook.setUser_id(user.getUSER_ID());
			userbook.setPrice_sell(price_sell);
			userbook.setPrice_hire(price_hire);
			userBookService.save(userbook);
			
		}

		Page page = new Page();
		page.setPageSize(10000);
		List<PageData> bookList = bookService.listListPageList(page);
		mv.addObject("bookList", bookList);
		mv.setViewName("nearbybooks/personal_mybook");
		
		return mv;
	}  
	
	@RequestMapping(value="/updateBook", method = RequestMethod.POST)
	public ModelAndView updateBook(
			@RequestParam(value = "id", required = false) int id,
			@RequestParam(value = "isbn", required = false) String isbn,
			@RequestParam(value = "price_hire", required = false) int price_hire,
			@RequestParam(value = "price_sell", required = false) int price_sell)throws Exception{
		ModelAndView mv = new ModelAndView();
		UserBook userbook = userBookService.getUserBookByBookId(id);
		userbook.setPrice_hire(price_hire);
		userbook.setPrice_sell(price_sell);
		userBookService.update(userbook);
		Page page = new Page();
		List<PageData> bookList = bookService.listListPageList(page);
		mv.addObject("bookList",bookList);
		mv.setViewName("nearbybooks/personal_mybook");
		return mv;
	}
	
/*	@RequestMapping(value="/getBookById")
	@ResponseBody
	public ReturnResult getBookById(@RequestParam("id") int id) throws Exception{
		ReturnResult ret = new ReturnResult();
		try {
			PageData book = bookService.getBookById(id);
			ret.setMsg("true");
			ret.setResult(book);
		} catch (Exception e) {
			// TODO: handle exception
			ret.setMsg("false");
		}
		return ret;
	}*/
	
	/**
	 * 根据地查询书
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/getBookById")
	public ModelAndView getBookById(@RequestParam("id") int id) throws Exception{
		ModelAndView mView = this.getModelAndView();
		Book book = bookService.getBookById(id);
		mView.addObject("book", book);
		mView.setViewName("nearbybooks/information");
		
		//查询书的评论列表
		List<BookComment> bookCommentList = bookCommentService.getBookCommentListByBookId(id);
		mView.addObject("bookCommentList", bookCommentList);
		return mView;
	}	
	
	@RequestMapping(value="/deleteBook")
	@ResponseBody
	public ReturnResult deleteBook(@RequestParam("id") int id) throws Exception{
		ReturnResult ret = new ReturnResult();
		try {
			//删除图书
			bookService.delete(id);
			//删除关联关系
			userBookService.delete(id);
			ret.setMsg("true");
			ret.setResult("");
		} catch (Exception e) {
			// TODO: handle exception
			ret.setMsg("false");
		}
		return ret;
	}
	
	
	@SuppressWarnings({ "static-access", "unchecked", "rawtypes" })
	@RequestMapping(value="/getBookList")
	@ResponseBody
	public ModelAndView getBookList() throws Exception{
		ModelAndView mv = new ModelAndView();
		Distance d = new Distance();
		Map<String, String> map = new HashMap();
		List<UserAddress> userAddressList = userAddressService.getUserAddressByList();
		for (int i = 0; i < userAddressList.size(); i++) {
			//进行横纵坐标对比是否在距离内
			int distance = (int) d.GetDistance(121.491909,31.233234,userAddressList.get(i).getCoordinate_x(),userAddressList.get(i).getCoordinate_y());
			if (distance <= 500) {
				//遍历map集合中是否已存在该用户ID
				if (map.values().contains(userAddressList.get(i).getUSER_ID()) == false) {
					map.put(i+"",userAddressList.get(i).getUSER_ID());
				}
			}
		}
		
		List list = new ArrayList<>();
		Page page = new Page();
		//根据用户id循环获取图书信息
        for (String key : map.keySet()) {  
        	System.out.println("USER_ID = " + map.get(key));  
        	PageData pd = new PageData();
        	pd.put("userid", map.get(key));
        	page.setPd(pd);
        	list.add(bookService.getBookByUserId(page));
        } 
        
		return mv;
	}
}
