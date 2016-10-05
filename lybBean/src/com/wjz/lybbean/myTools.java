package com.wjz.lybbean;

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
}
