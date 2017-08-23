package com.mvc.controller;

import java.io.IOException;import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.FindIdDAO;
import com.mvc.dto.FindidDTO;


@WebServlet({ "/findid"})

public class UserFindId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("userEmail"); //이메일
		String que = request.getParameter("userQue"); // 질문
		String ques = request.getParameter("userQueans"); //질문답
		
		FindIdDAO dao = new FindIdDAO();
		if(dao.findid(email,que,ques)!=null){
			ArrayList<FindidDTO> list = new ArrayList<>();			
			list = dao.findid(email,que,ques);
			request.setAttribute("idlist", list);
		}
		RequestDispatcher dis = request.getRequestDispatcher("findid.jsp");
		dis.forward(request, response);
	}

}
