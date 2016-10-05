package com.wjz.bean;

import java.io.UnsupportedEncodingException;

public class myTools {
	public static String toChinese(String str){
		if(str==null)
			str="";
		try{
			str=new String(str.getBytes("ISO-8859-1"),"UTF-8");  //解决中文乱码
		}catch(UnsupportedEncodingException e){
			str="";
			e.printStackTrace();
		}
		return str;
	}
	
	public static int strToInt(String str) throws UnsupportedEncodingException{  //将String类型转换为int型
		if(str==null||str.equals(""))
			str="0";
		int i=0;
		i=Integer.parseInt(str);
		return i;
	}
}
