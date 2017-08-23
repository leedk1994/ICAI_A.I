package com.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dto.BoardDTO;
import com.mvc.service.BoardService;

@WebServlet("/board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		proccess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		proccess(request, response);
	}

	private void proccess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		
		request.setCharacterEncoding("utf-8");
		String end2 = (String) request.getAttribute("end2");
		
		BoardService service = new BoardService();
		ArrayList<BoardDTO> list = service.board();
		
		String end = "9";
		
		if(end2 == null){
			request.setAttribute("end", end);
		}else{
			request.setAttribute("end", end2);
		}
		
		request.setAttribute("list", list);
		RequestDispatcher dis = request.getRequestDispatcher("boardmain.jsp");
		dis.forward(request, response);
	}
}