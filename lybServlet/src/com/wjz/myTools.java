package com.wjz;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class myTools {
	/**
	 * @功能 解决中文乱
	 * @参数 str为要转换的字符串
	 * @返回值 String
	 */
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
	
	/**
	 * @功能 转换字符中属于HTML语言中的特殊字符
	 * @参数 source为要转换的字符串
	 * @返回值 String
	 */
	public static String changeHtml(String source){
		String changeStr="";
		changeStr=source.replace("&","&amp");
		changeStr=changeStr.replace(" ","&nbsp");
		changeStr=changeStr.replace("<","&lt");
		changeStr=changeStr.replace(">","&gt");
		changeStr=changeStr.replace("\r\n","<br>");
		return changeStr;
	}
	
	/**
	 * @功能 指定Date格式为"yyyy-MM-dd HH:mm:ss"
	 * @参数 date为被转换日期
	 * @返回值 String
	 */
	public static String changeTime(Date date){
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(date);
	}
}
