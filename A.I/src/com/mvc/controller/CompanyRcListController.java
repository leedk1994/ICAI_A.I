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

@WebServlet("/companyRClist")
public class CompanyRcListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public CompanyRcListController() {
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	private void proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String compName = request.getParameter("compName");
		String compFaddress = request.getParameter("compFaddress");
		String compSaddress = request.getParameter("compSaddress");
		String compField = request.getParameter("compField");
		String compAge = request.getParameter("compAge");
		String user_id = request.getParameter("user_id");
		
		CompanyService service = new CompanyService(request, response);
		
		ArrayList<CompanyDTO> list = service.companyRcList(compName,compFaddress,compSaddress,compField,compAge,user_id);
		request.setAttribute("list", list);
		RequestDispatcher dis = request.getRequestDispatcher("rcList.jsp");
		dis.forward(request, response);
		
	}

}
