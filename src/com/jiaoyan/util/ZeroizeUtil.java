package com.jiaoyan.util;

/**
 * 补全编码格式
 */
public class ZeroizeUtil {

 public static String zeroizeCode(String datacode){
	  StringBuffer code = new StringBuffer();
	  int max=datacode==null?1:Integer.parseInt(datacode.substring(1,datacode.length()).toString())+1;
	  for (int i = 0; i < datacode.length() - String.valueOf(max).length(); i++) {
		 code.append("0");
	  }
	  return code.append(String.valueOf(max)).toString();
  }
}
