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
    
    <title>My JSP 'shopcar.jsp' starting page</title>
    
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
    <jsp:useBean id="myCar" class="com.wjz.bean.shopCar" scope="session"/>
    <% 
    	ArrayList buyList=myCar.getBuyList();
    	float total=0;
    %>
     <table border="1" width="450" cellspacing="0" cellpadding="0">
     	<tr height="50">
		 	<td colspan="5" align="center">购买的商品如下</td>
	 	</tr>
	 	<tr align="center" height="30" bgcolor="pink">
		 	<td>名称</td>
		 	<td>价格（元/斤）</td>
		 	<td>数量</td>
		 	<td>总价（元）</td>
		 	<td>移除（-1/次）</td>
	 	</tr>
	 	<%
	 		if(buyList==null||buyList.size()==0){
	 	 %>
	 	 	<tr height="100">
	 	 		<td colspan="5" align="center">您的购物车为空！</td>
	 	 	</tr>
	 	 	<%
	 	 		}else{
	 	 			for(int i=0;i<buyList.size();i++){
	 	 				goodsSingle single=(goodsSingle)buyList.get(i);
	 	 				
	 	 				String name=single.getName();
	 	 				float price=single.getPrice();
	 	 				int num=single.getNum();
	 	 				float money=price*num; 
	 	 				total+=money;
	 	 				
	 	 	%>	
	 	 		<tr height="50" align="center">
	 	 			<td><%=name %></td>
	 	 			<td><%=price %></td>
	 	 			<td><%=num %></td>
	 	 			<td><%=money %></td>
	 	 			<td><a href="docar.jsp?action=remove&name=<%=single.getName() %>">移除</a></td>
	 	 		</tr>
	 	 	<%
	 	 			}
	 	 		}
	 	 	 %>
	 	 <tr height="50">
	 	 	<td colspan="5" align="center" >应付金额：<%=total %></td>
	 	 </tr>
	 	 <tr height="50" align="center">
	 	 	<td colspan="2"><a href="show.jsp">继续购物</a></td>
	 	 	<td colspan="3"><a href="docar.jsp?action=clear">清空购物车</a></td>
	 	 </tr>
     </table>
    </div>
  </body>
</html>
