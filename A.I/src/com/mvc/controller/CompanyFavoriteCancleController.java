package com.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CompanyDAO;
import com.mvc.dto.CompanyDTO;

@WebServlet("/companyfavoritecancle")
public class CompanyFavoriteCancleController extends HttpServlet{
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
		
		HashMap<String, String> map = new HashMap<>();
		
		CompanyDAO dao = new CompanyDAO();
		
		System.out.println("#########################");
		System.out.println(request.getParameter("compNum"));
		System.out.println("#########################");
		
		map.put("loginId", userId);
		map.put("compNum", request.getParameter("compNum"));
		
		if(dao.favCancle(map) != 0)
		{
			msg = "성공";
		}else
		{
			msg = "실패";
		}
		page = "search.jsp";
		
		response.sendRedirect("companyfavoritelist");
		/*request.setAttribute("resultList", map);
		RequestDispatcher dis = request.getRequestDispatcher("favorite.jsp");
		dis.forward(request, response);*/
	}
}
