package com.wjz.bean;

import java.io.UnsupportedEncodingException;

public class myTools {
	public static String toChinese(String str){
		if(str==null)
			str="";
		try{
			str=new String(str.getBytes("ISO-8859-1"),"UTF-8");  //�����������
		}catch(UnsupportedEncodingException e){
			str="";
			e.printStackTrace();
		}
		return str;
	}
	
	public static int strToInt(String str) throws UnsupportedEncodingException{  //��String����ת��Ϊint��
		if(str==null||str.equals(""))
			str="0";
		int i=0;
		i=Integer.parseInt(str);
		return i;
	}
}
