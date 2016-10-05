<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
	<form action="addWord" method="post">
		<center>
			<table border="1"  cellspacing="0" cellpadding="0">
				<tr height="30">
					<td>留  言  者:</td>
					<td><input type="text" name="author" size="110"></td>
				</tr>
				<tr>
					<td>留言标题:</td>
					<td><input type="text" name="title" size="110"></td>
				</tr>
				<tr>
					<td>留言内容:</td>
					<td><textarea name="content" rows="20" cols="82"></textarea></td>
				</tr>
				<tr align="center" height="30">
					<td colspan="2">
						<input type="submit" value="留言">
						<input type="reset" value="重置">
					</td>
				</tr>
				<tr align="center" height="30">
					<td><a href="show.jsp">查看留言</a></td>
				</tr>
			</table>
		</center>
	</form>
  </body>
</html>
