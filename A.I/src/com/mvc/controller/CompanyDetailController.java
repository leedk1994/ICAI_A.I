package com.mvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CompanyDAO;
import com.mvc.dto.CompanyDTO;

@WebServlet("/companydetail")
public class CompanyDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public CompanyDetailController() {
       
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}
	private void proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CompanyDAO dao = new CompanyDAO();
		
		String compName = request.getParameter("compName");
		String user_id = request.getParameter("user_id");
		String loginId = (String) request.getSession().getAttribute("loginId");
		String page="";
		
		CompanyDTO info = dao.detail(compName);
		
		if(user_id == null){
			user_id = (String) request.getAttribute("userId");
		}
		
		if(user_id.equals(loginId)){
			page = "detail.jsp";
		}else{
			page = "detail2.jsp";
		}
		
		request.setAttribute("company", info);
		RequestDispatcher dis = request.getRequestDispatcher(page);
		dis.forward(request, response);
		
	}

}
