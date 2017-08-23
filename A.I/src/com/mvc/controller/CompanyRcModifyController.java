package com.mvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CompanyDAO;

@WebServlet("/companyrcmodify")
public class CompanyRcModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public CompanyRcModifyController() {
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	private void proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String compName = request.getParameter("compName");
		String compCost = request.getParameter("compCost");
		String compField = request.getParameter("compField");
		String compProccess = request.getParameter("compProccess");
		String compAge = request.getParameter("compAge");
		String compFaddress = request.getParameter("compFaddress");
		String compSaddress = request.getParameter("compSaddress");
		String compSubaddress = request.getParameter("compSubaddress");
		String compPhone = request.getParameter("compPhone");
		
		String page = "";
		String msg = "";
		
		CompanyDAO dao = new CompanyDAO();
		if(dao.rcupdate(compName,compCost,compField,compProccess,compAge,compFaddress,compSaddress,compSubaddress,compPhone)>0){
			page = "main.jsp";
			msg = "수정 성공";
		}else{
			page = "companyrcmodify?compName="+compName;
			msg = "수정 실패";
		}
		request.setAttribute("result", msg);
		RequestDispatcher dis = request.getRequestDispatcher(page);
		dis.forward(request, response);
	}
	

}
