package com.mvc.service;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.mvc.dao.UserDAO;

public class UserService {

	HttpServletRequest request = null;
	HttpServletResponse response = null;

	public UserService(HttpServletRequest request,HttpServletResponse response) {
		this.request = request;
		this.response = response;
	}

	public void login() throws ServletException, IOException {
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPass");

		UserDAO dao = new UserDAO();
		if(dao.login(id, pw)){
			request.getSession().setAttribute("loginId", id);
			response.sendRedirect("main.jsp");
		}else{
			request.setAttribute("result", "로그인에 실패 했습니다.");
			RequestDispatcher dis = request.getRequestDispatcher("joinuserindex.jsp");
			dis.forward(request, response);
		}		
	}


	public void logout()  throws ServletException, IOException {
		request.getSession().removeAttribute("loginId");
		response.sendRedirect("joinuserindex.jsp");
	}


	public void join() throws ServletException, IOException{

		String msg="";
		String page="";
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("userId");
		String userpw = request.getParameter("userPass");
		String username = request.getParameter("userName");
		String userage = request.getParameter("userAge");
		String useremail = request.getParameter("userEmail");
		String userphone = request.getParameter("userPhone");
		String userque = request.getParameter("userQue");
		String userqueans = request.getParameter("userQueans");
		String compnum = request.getParameter("compNum");

		UserDAO dao = new UserDAO();
		if(dao.join(userid,userpw,username,userage,useremail,userphone,userque,userqueans,compnum) == 1){
			msg = "등록에 성공 했습니다.";
			page = "joinuserindex.jsp";
		}else{
			msg = "등록에 실패 했습니다.";
			page = "joinuserjoin.jsp";
		}

		request.setAttribute("result", msg);
		RequestDispatcher dis = request.getRequestDispatcher(page);
		dis.forward(request, response);

	}

	public void idcheck() throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("userId");
		String msg="";
		UserDAO dao = new UserDAO();
		if(dao.check(id)){
			msg= "중복입니다.";
		}else{
			msg= "사용가능합니다.";
		}
		request.setAttribute("checkid", id);
		request.setAttribute("result", msg);
		RequestDispatcher dis = request.getRequestDispatcher("joinuserjoin.jsp");
		dis.forward(request, response);
	}
}
