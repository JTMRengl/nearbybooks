package com.jiaoyan.test;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.artofsolving.jodconverter.DocumentConverter;
import com.artofsolving.jodconverter.openoffice.connection.OpenOfficeConnection;
import com.artofsolving.jodconverter.openoffice.connection.SocketOpenOfficeConnection;
import com.artofsolving.jodconverter.openoffice.converter.OpenOfficeDocumentConverter;

public class OfficeToPdfInfo {

	private final static SimpleDateFormat sdfDays = new SimpleDateFormat("yyyyMMdd");
	
	public static int officetopdf(String sourcePath,String destPath) {
		try {
			File inputFile = new File(sourcePath);

			File outputFile = new File(destPath);
			// 获得文件格式
			//DefaultDocumentFormatRegistry formatReg = new DefaultDocumentFormatRegistry();
			//DocumentFormat pdfFormat = formatReg.getFormatByFileExtension("pdf");
			//DocumentFormat docFormat = formatReg.getFormatByFileExtension("doc");
			
			//获取OpenOffice的安装目录
			String OpenOffice_HOME = "C:\\Program Files (x86)\\OpenOffice 4\\";
			// 启动OpenOffice的服务
			String command = OpenOffice_HOME  
	                 + "program\\soffice.exe -headless -accept=\"socket,host=127.0.0.1,port=8100;urp;\"";  
	        Process pro = Runtime.getRuntime().exec(command);  
	        //打开OpenOffice进程
			OpenOfficeConnection connection = new SocketOpenOfficeConnection("127.0.0.1",8100);
			System.out.println(connection);
			connection.connect();
			DocumentConverter converter = new OpenOfficeDocumentConverter(connection);

			converter.convert(inputFile, outputFile);
			
			//关闭OpenOffice连接		
			connection.disconnect();  
	        // 关闭OpenOffice服务的进程  
	        pro.destroy();  

		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}

		return 1;
	}
	
	
	public static void main(String[] args) {
		String sourcePath = "d://test.docx";
		String destPath = "d://test.pdf";
		OfficeToPdfInfo.officetopdf(sourcePath,destPath);
	}
	public static String getDays(){
		return sdfDays.format(new Date());
	}
}
