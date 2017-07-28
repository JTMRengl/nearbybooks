package com.jiaoyan.util;

import javax.annotation.Resource;

import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.stereotype.Component;
@Component("serverIp")
public class ServerIp {
	@Resource(name = "messageSourceAccessor")
	private  MessageSourceAccessor mr;
	public  String getServerIp(){
		String serverIp =  mr.getMessage("serverIp");
		System.out.println("服务器ip："+ serverIp);
		return serverIp;
	}
	public  String getUploadFileUrl(){
		String serverIp =  mr.getMessage("uploadFileUrl");
		System.out.println("上传文件ip："+ serverIp);
		return serverIp;
	}
	public  String getUploadImgUrl(){
		String serverIp =  mr.getMessage("uploadImgUrl");
		System.out.println("上传图片ip："+ serverIp);
		return serverIp;
	}
}
