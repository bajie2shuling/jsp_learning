package com.wjz;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class myTools {
	/**
	 * @���� ���������
	 * @���� strΪҪת�����ַ���
	 * @����ֵ String
	 */
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
	
	/**
	 * @���� ת���ַ�������HTML�����е������ַ�
	 * @���� sourceΪҪת�����ַ���
	 * @����ֵ String
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
	 * @���� ָ��Date��ʽΪ"yyyy-MM-dd HH:mm:ss"
	 * @���� dateΪ��ת������
	 * @����ֵ String
	 */
	public static String changeTime(Date date){
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return format.format(date);
	}
}
