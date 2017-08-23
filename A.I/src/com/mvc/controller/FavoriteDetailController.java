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

@WebServlet("/favoritedetail")
public class FavoriteDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public FavoriteDetailController() {
       
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
		
		CompanyDTO info = dao.favdetail(compName);
		
		request.setAttribute("company", info);
		RequestDispatcher dis = request.getRequestDispatcher("favdetail.jsp");
		dis.forward(request, response);
		
	}

}
