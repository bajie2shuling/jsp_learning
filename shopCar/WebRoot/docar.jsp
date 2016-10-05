<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.wjz.bean.goodsSingle" %>
<%@ page import="com.wjz.bean.myTools" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'docar.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<jsp:useBean id="myCar" class="com.wjz.bean.shopCar" scope="session"/>
	<%
		String action=request.getParameter("action");
		if(action==null)
			action="";
		if(action.equals("buy")){   //购买商品
			ArrayList goodsList=(ArrayList)session.getAttribute("goodsList");
			int id=myTools.strToInt(request.getParameter("id"));
			goodsSingle single=(goodsSingle)goodsList.get(id);
			myCar.addItem(single);
			response.sendRedirect("show.jsp");
		}else if(action.equals("remove")){
			String name=request.getParameter("name");
			myCar.removeItem(name);
			response.sendRedirect("shopcar.jsp");
		}else if(action.equals("clear")){
			myCar.clearCar();
			response.sendRedirect("shopcar.jsp");
		}else{
			response.sendRedirect("show.jsp");
		}
	 %>
  </body>
</html>
