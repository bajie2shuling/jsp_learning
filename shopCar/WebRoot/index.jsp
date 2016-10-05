<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.wjz.bean.goodsSingle" %>
<%!
	static ArrayList goodsList=new ArrayList();
	static{
		String[] names={"苹果","梨子","香蕉","橘子"};
		float[] prices={2.8f,3.4f,2.0f,2.3f};
		for(int i=0;i<4;i++){
			goodsSingle single=new goodsSingle();
			single.setName(names[i]);
			single.setPrice(prices[i]);
			single.setNum(1);
			goodsList.add(i, single);
		}
	}
 %>
 <%
 	session.setAttribute("goodsList", goodsList);
 	response.sendRedirect("show.jsp");
  %>
