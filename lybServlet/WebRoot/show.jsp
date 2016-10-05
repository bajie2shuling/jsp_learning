<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.wjz.wordSingle" %>
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
	<%
		ArrayList wordList=(ArrayList)application.getAttribute("wordList");
		if(wordList==null||wordList.size()==0){
	%>
			<div align="center">
	 				<table border="1" width="450" cellspacing="0" cellpadding="0">
						<tr align="center" height="30">
	 						<td>
	 							<%out.print("还没有留言，快来抢沙发！"); %>
	 						</td>
	 					</tr>
	 					<tr align="center" height="30">
							<td ><a href="index.jsp">我要留言</a></td>
						</tr>
				 	</table>
	 		</div>
	<%	
		}
		else{
			for(int i=wordList.size()-1;i>=0;i--){
				wordSingle single=(wordSingle)wordList.get(i);
	 %>
	 			<div align="center">
	 				<table border="1" width="900" cellspacing="0" cellpadding="0">
	 					<tr bgcolor="pink">
	 						<td width="10%">留  言  者:</td>
	 						<td><%=single.getAuthor() %></td>
	 					</tr>
	 					<tr>
	 						<td width="10%">留言时间:</td>
	 						<td><%=single.getTime() %></td>
	 					</tr>
						<tr>
	 						<td width="10%">留言标题:</td>
	 						<td><%=single.getTitle() %></td>
	 					</tr>
	 					<tr>
	 						<td colspan="2">留言内容:</td>
	 					</tr>
	 					<tr>
	 						<td colspan="2"><textarea name="content" rows="20" cols="110"><%=single.getContent() %></textarea></td>
	 					</tr>
	 					<tr >
							<td colspan="2" align="center"><a href="index.jsp">我要留言</a></td>
						</tr>
	 				</table>
	 			</div>
	 			
	 <%
	 			}
	 		}
	  %>
  </body>
</html>
