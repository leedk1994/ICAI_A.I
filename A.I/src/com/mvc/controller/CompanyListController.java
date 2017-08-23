package com.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dto.CompanyDTO;
import com.mvc.service.CompanyService;

@WebServlet("/companylist")
public class CompanyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public CompanyListController() {
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String compName = request.getParameter("compName");
		String compFaddress = request.getParameter("compFaddress");
		String compSaddress = request.getParameter("compSaddress");
		String compField = request.getParameter("compField");
		
		
		CompanyService service = new CompanyService(request, response);
		ArrayList<CompanyDTO> list = service.companylist(compName,compFaddress,compSaddress,compField,user_id);
		request.setAttribute("list", list);
		RequestDispatcher dis = request.getRequestDispatcher("search.jsp");
		dis.forward(request, response);
	}

}
