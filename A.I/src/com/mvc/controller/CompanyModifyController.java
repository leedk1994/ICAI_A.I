package com.mvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CompanyDAO;

@WebServlet("/companymodify")
public class CompanyModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public CompanyModifyController() {
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	private void proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String compName = request.getParameter("compName");
		String compCost = request.getParameter("compCost");
		String compField = request.getParameter("compField");
		String compProccess = request.getParameter("compProccess");
		String compAge = request.getParameter("compAge");
		String compFaddress = request.getParameter("compFaddress");
		String compSaddress = request.getParameter("compSaddress");
		String compSubaddress = request.getParameter("compSubaddress");
		String compPhone = request.getParameter("compPhone");
		String userId = request.getParameter("userId");
		
		String page = "";
		String msg = "";
		
		CompanyDAO dao = new CompanyDAO();
		if(dao.update(compName,compCost,compField,compProccess,compAge,compFaddress,compSaddress,compSubaddress,compPhone,userId)>0){
			page = "search.jsp";
			msg = "수정 성공";
		}else{
			page = "companymodify?compName="+compName;
			msg = "수정 실패";
		}
		request.setAttribute("userId", userId);
		request.setAttribute("result", msg);
		RequestDispatcher dis = request.getRequestDispatcher(page);
		dis.forward(request, response);
	}

}
