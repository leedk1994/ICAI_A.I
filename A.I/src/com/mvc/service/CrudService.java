package com.mvc.service;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CrudDAO;


public class CrudService {

	HttpServletRequest request = null;
	HttpServletResponse  response = null;
	
	public CrudService(HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
	}
	// 학원등록 기능
	public void resist() throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");// 한글깨짐방지
		String writer = (String)request.getSession().getAttribute("loginId");
		String compName = request.getParameter("compName");
		String compNum = request.getParameter("compNum");
		String compCost = request.getParameter("compCost");
		String compField = request.getParameter("compField");
		String compProccess = request.getParameter("compProccess");
		String compAge = request.getParameter("compAge");
		String compFaddress = request.getParameter("compFaddress");
		String compSaddress = request.getParameter("compSaddress");
		String compSubaddress = request.getParameter("compSubaddress");
		String compPhone = request.getParameter("compPhone");
		CrudDAO dao = new CrudDAO();
		
		String msg = "";
		String page = "";
		
		if(dao.resist(writer,compName,compNum,compCost,compField,
				compProccess,compAge,compFaddress,compSaddress,compSubaddress,compPhone) == 1){
			msg = "학원등록이 완료 되었습니다.";
			page = "main.jsp";
		}else{
			msg = "학원등록에 실패 하셨습니다.";
			page = "resist.jsp";
		}
		request.setAttribute("msg", msg);
		RequestDispatcher dis = request.getRequestDispatcher(page);
		dis.forward(request, response);
	}
	public void search() throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String user_id = request.getParameter("user_id");
		String compName = request.getParameter("compName");
		String compFaddress = request.getParameter("compFaddress");
		String compSaddress = request.getParameter("compSaddress");
		String compField = request.getParameter("compField");
		
		CrudDAO dao = new CrudDAO();
		
		String msg = "검색실패";
		String page = "search.jsp";
		
		if(dao.search(compFaddress,compSaddress,compField,compName,user_id)){
			msg = "검색완료";
			page = "./companylist";
		}
		request.setAttribute("msg", msg);
		RequestDispatcher dis = request.getRequestDispatcher(page);
		dis.forward(request, response);
	}
	
}