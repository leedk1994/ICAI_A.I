package com.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.service.UserService;

@WebServlet({ "/userlogin", "/logout", "/userjoin","/idcheck"})
public class UserMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		proccess(request, response);
	
	}

	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		proccess(request, response);
	}
	
	//get, post 둘다 처리 가능
	private void proccess(HttpServletRequest request, 
			HttpServletResponse response)
					throws ServletException, IOException {
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String subAddr = uri.substring(context.length());
		UserService service = new UserService(request, response);
				
		switch(subAddr){
			case "/userlogin":
				service.login();
			break;
			
			case "/logout":
				service.logout();
			break;
			
			case "/userjoin":
				service.join();
			break;
			
			case "/idcheck":
				service.idcheck();
			break;
		}
	}
}
