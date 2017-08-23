package com.mvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.service.WriteService;

@WebServlet("/boardwrite")
public class BoardWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		proccess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		proccess(request, response);
	}
	
	private void proccess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		
		String writer = (String)request.getSession().getAttribute("loginId");
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		WriteService service = new WriteService();
		
		String msg = service.write(writer, subject, content);
		String page = "boardwriteForm.jsp";
		if(msg.equals("작성 완료")){
			page = "board";
		}
		
		request.setAttribute("msg", msg);
		RequestDispatcher dis = request.getRequestDispatcher(page);
		dis.forward(request, response);
		
	}
}