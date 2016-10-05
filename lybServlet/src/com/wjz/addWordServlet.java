package com.wjz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class addWordServlet extends HttpServlet {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String author=myTools.toChinese(request.getParameter("author"));
		String title=myTools.toChinese(request.getParameter("title"));
		String content=myTools.toChinese(request.getParameter("content"));
		String time=myTools.changeTime(new Date());
		
		wordSingle single=new wordSingle();
		single.setAuthor(myTools.changeHtml(author));  //动态生成表格中的内容，需要转换
		single.setTitle(myTools.changeHtml(title));
		single.setContent(content);   //这个是在textarea中显示，不需要转换
		single.setTime(time);
		
		HttpSession session=request.getSession();
		ServletContext scx=session.getServletContext();
		ArrayList wordList=(ArrayList)scx.getAttribute("wordList");
		if(wordList==null)
			wordList=new ArrayList();
		
		wordList.add(single);  
		scx.setAttribute("wordList", wordList);			//将对象保存到application
		
		response.sendRedirect("show.jsp");
	}

}
