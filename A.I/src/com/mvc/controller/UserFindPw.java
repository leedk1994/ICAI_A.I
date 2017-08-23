package com.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.mvc.dao.FindpwDAO;

import com.mvc.dto.FindpwDTO;

@WebServlet("/findpw")
public class UserFindPw extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("userId"); //이메일
		String que = request.getParameter("userQue"); // 질문
		String ques = request.getParameter("userQueans"); //질문답
		
		
		FindpwDAO dao = new FindpwDAO();
		if(dao.findpw(id,que,ques)!=null){
			ArrayList<FindpwDTO> list = new ArrayList<>();			
			list = dao.findpw(id,que,ques);
			request.setAttribute("pwlist", list);
		}

		RequestDispatcher dis = request.getRequestDispatcher("findpw.jsp");
		dis.forward(request, response);
	
	}

}
