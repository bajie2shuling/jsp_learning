<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.wjz.bean.goodsSingle" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
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
  <div align="center">
	<%
		ArrayList goodsList=(ArrayList)session.getAttribute("goodsList");
	 %>
	 <table border="1" width="450" cellspacing="0" cellpadding="0">
	 	<tr height="50">
		 	<td colspan="3" align="center">提供商品如下</td>
	 	</tr>
	 	<tr align="center" height="30" bgcolor="pink">
		 	<td>名称</td>
		 	<td>价格（元/斤）</td>
		 	<td>购买</td>
	 	</tr>
	 	<%
	 		if(goodsList==null||goodsList.size()==0){
	 	 %>
	 	 	<tr height="100">
	 	 		<td colspan="3" align="center">没有商品可显示！</td>
	 	 	</tr>
	 	 	<%
	 	 		}else{
	 	 			for(int i=0;i<goodsList.size();i++){
	 	 				goodsSingle single=(goodsSingle)goodsList.get(i);
	 	 	%>
	 	 		<tr height="50" align="center">
	 	 			<td><%=single.getName() %></td>
	 	 			<td><%=single.getPrice() %></td>
	 	 			<td><a href="docar.jsp?action=buy&id=<%=i %>">购买</a></td>
	 	 		</tr>
	 	 	<%
	 	 			}
	 	 		}
	 	 	 %>
	 	 <tr height="50">
	 	 	<td colspan="3" align="center" ><a href="shopcar.jsp">查看购物车</a></td>
	 	 </tr>
	 </table>
	</div>
  </body>
</html>
