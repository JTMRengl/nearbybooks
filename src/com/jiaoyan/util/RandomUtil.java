package com.jiaoyan.util;

import java.util.Random;

public class RandomUtil {

	public static String randomByNum(int num){
		Random random = new Random();
		String result="";
		for(int i=0;i<num;i++){
			result+=random.nextInt(10);
		}
		System.out.print(result);	
		return result;
	}
}
