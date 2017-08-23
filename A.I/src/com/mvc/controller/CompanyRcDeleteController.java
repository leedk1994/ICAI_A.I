package com.mvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CompanyDAO;

@WebServlet("/companyrcdelete")
public class CompanyRcDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public CompanyRcDeleteController() {
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	private void proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String compName = request.getParameter("compName");
		
		CompanyDAO dao = new CompanyDAO();
		String msg = "";
		if(dao.rcdelete(compName) == 1){
			msg = "삭제완료";
		}else{
			msg = "삭제실패";
		}
		request.setAttribute("msg", msg);
		RequestDispatcher dis = request.getRequestDispatcher("recommend.jsp");
		dis.forward(request, response);
		
	}

}
