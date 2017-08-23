package com.mvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CompanyDAO;
import com.mvc.dto.CompanyDTO;

@WebServlet("/companyfavoritelist")
public class CompanyFavoriteListController extends HttpServlet {
	
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
		String userId = request.getSession().getAttribute("loginId").toString();
		
		CompanyDAO dao = new CompanyDAO();
		
		List<CompanyDTO> list = dao.favList(userId);
		
		request.setAttribute("resultList", list);
		page = "favorite.jsp";
				
		RequestDispatcher dis = request.getRequestDispatcher(page);
		dis.forward(request, response);
		
	}
}
