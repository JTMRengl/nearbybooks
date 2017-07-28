package com.jiaoyan.util;

import java.io.IOException;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.shiro.session.Session;

public class SendMsg_webchinese {
	
	public static String sendCode(String cell_phone_number) throws HttpException, IOException {
		
		Session session = Jurisdiction.getSession();
		
		//调用生成随机码的工具类,生成4位
//		String sendCode = RandomUtil.randomByNum(4);
//		
//		HttpClient client = new HttpClient();
//		PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn"); 
//		post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");//在头文件中设置转码
//		NameValuePair[] data ={ new NameValuePair("Uid", "javaboyrengl"),new NameValuePair("Key", "2df989a1c24e90dff7ed"),new NameValuePair("smsMob",cell_phone_number),
//					new NameValuePair("smsText","验证码：" + sendCode + "[附近的书]")};
//		post.setRequestBody(data);
//		
//		client.executeMethod(post);
//		Header[] headers = post.getResponseHeaders();
//		int statusCode = post.getStatusCode();
//		System.out.println("statusCode:"+statusCode);
//		for(Header h : headers)
//		{
//			System.out.println(h.toString());
//		}
//		String result = new String(post.getResponseBodyAsString().getBytes("gbk")); 
//		System.out.println(result); //打印返回消息状态
//		
//		
//		post.releaseConnection();
		
		//将手机号和随机码放入session;
		session.setAttribute(cell_phone_number, "5678");
		return "";
		//return result;
	}
	
	
	public static void main(String[] args) throws HttpException, IOException {
		
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn"); 
		post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");//在头文件中设置转码
		NameValuePair[] data ={ new NameValuePair("Uid", "javaboyrengl"),new NameValuePair("Key", "2df989a1c24e90dff7ed"),new NameValuePair("smsMob","18600841009"),new NameValuePair("smsText","验证码：8888[附近的书]")};
		post.setRequestBody(data);
		
		client.executeMethod(post);
		Header[] headers = post.getResponseHeaders();
		int statusCode = post.getStatusCode();
		System.out.println("statusCode:"+statusCode);
		for(Header h : headers)
		{
			System.out.println(h.toString());
		}
		String result = new String(post.getResponseBodyAsString().getBytes("gbk")); 
		System.out.println(result); //打印返回消息状态
		
		
		post.releaseConnection();
	}

}
