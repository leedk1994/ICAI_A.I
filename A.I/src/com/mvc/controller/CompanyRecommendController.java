package com.mvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CompanyDAO;

@WebServlet("/companyrecommend")
public class CompanyRecommendController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CompanyRecommendController() {
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		proccess(request,response);
	}

	private void proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String compFaddress = request.getParameter("compFaddress");
		String compSaddress = request.getParameter("compSaddress");
		String compField = request.getParameter("compField");
		String compAge = request.getParameter("compAge");
		
		
		CompanyDAO dao = new CompanyDAO();
		
		String msg = "검색실패";
		String page = "recommend.jsp";
		
		if(dao.recommend(compFaddress,compSaddress,compField,compAge)){
			msg = "검색완료";
			page = "./companyRClist";
			System.out.println("검색성공");
		}
		request.setAttribute("msg", msg);
		RequestDispatcher dis = request.getRequestDispatcher(page);
		dis.forward(request, response);
	}

}