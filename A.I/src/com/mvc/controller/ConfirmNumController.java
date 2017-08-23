package com.mvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CompanyDAO;

@WebServlet("/confirmnum")
public class ConfirmNumController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ConfirmNumController() {
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	private void proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String loginId = (String) request.getSession().getAttribute("loginId");
		String page="";
		String msg="";
		
		CompanyDAO dao = new CompanyDAO();
		
		if(dao.confirm(loginId) == 1){
			page="resist.jsp";
		}else{
			page="main.jsp";
			msg="일반회원은 등록이 불가능합니다.";
		}
		request.setAttribute("confmsg", msg);
		RequestDispatcher dis = request.getRequestDispatcher(page);
		dis.forward(request, response);
	}

}
