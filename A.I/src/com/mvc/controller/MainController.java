package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.service.CrudService;

@WebServlet({"/resist","/search"})
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		proccess(request, response);
	}
	
	protected void doPost(HttpServletRequest request,
		HttpServletResponse response)
			throws ServletException, IOException {
		proccess(request,response);
		}

	private void proccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String subAddr = uri.substring(context.length());
		
		CrudService service = new CrudService(request,response);
		
		switch(subAddr){
			case"/resist":
				service.resist();
			case"/search":
				service.search();
			
		}
	}
}