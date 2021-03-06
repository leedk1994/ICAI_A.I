package com.mvc.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.service.CommentWriteService;

@WebServlet("/boardcommentwrite")
public class BoardCommentWriteController extends HttpServlet {
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
		
		System.out.println("댓글 달기 이동");
		String comments = request.getParameter("comments");
		String bbsno = request.getParameter("bbsno");
		String user_id = request.getParameter("user_id");
		String bbsId = request.getParameter("bbsId");
		
		CommentWriteService service = new CommentWriteService();
		
		service.commentwrite(comments, bbsno, user_id);
		
		request.setAttribute("userId", bbsId);
		request.setAttribute("bbsno", bbsno);
		RequestDispatcher dis = request.getRequestDispatcher("boarddetail");
		dis.forward(request, response);
	}

}
