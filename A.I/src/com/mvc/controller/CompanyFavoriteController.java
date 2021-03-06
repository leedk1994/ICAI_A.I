package com.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CompanyDAO;
import com.mvc.dto.CompanyDTO;

@WebServlet("/companyfavorite")
public class CompanyFavoriteController extends HttpServlet{
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
		
		String page = null;
		String msg = null;
		String userId = request.getSession().getAttribute("loginId").toString();
		
		System.out.println("###########################");
		System.out.println(userId);
		System.out.println("###########################");
		
		CompanyDAO dao = new CompanyDAO();
		
		CompanyDTO info = dao.detail(request.getParameter("compName"));
		System.out.println("#########################");
		System.out.println(info.toString());
		System.out.println("#########################");
		
		
		if(dao.favComp(info, userId) != 0)
		{
			msg = "성공";
		}else
		{
			msg = "실패";
		}
		page = "search.jsp";
		
		response.sendRedirect("search.jsp");
		
	}
}
