<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.wjz.lybbean.myTools" %>
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
	<jsp:useBean id="myWord" class="com.wjz.lybbean.wordSingle" scope="request" />
		<center>
			<table border="1" bordercolor="pink">
				<tr height="30">
					<td colspan="2">留  言  者:<%= myTools.toChinese(myWord.getAuthor()) %></td>
				</tr>
				<tr>
					<td colspan="2">留言标题:<%= myTools.toChinese(myWord.getTitle()) %></td>
				</tr>
				<tr>
					<td>留言内容:</td>
					<td><textarea name="content" rows="20" cols="82" readonly><%=myTools.toChinese(myWord.getContent()) %></textarea></td>
				</tr>
				<tr align="center" height="30">
					<td colspan="2">
						<a href="index.jsp">继续留言</a>
					</td>
				</tr>
			</table>
		</center>
  </body>
</html>
