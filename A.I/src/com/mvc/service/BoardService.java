package com.mvc.service;

import java.util.ArrayList;

import com.mvc.dao.BoardDAO;
import com.mvc.dto.BoardDTO;

public class BoardService {

	public ArrayList<BoardDTO> board() {
		
		ArrayList<BoardDTO> list;
		BoardDAO dao = new BoardDAO();
		
		list = dao.board();
		
		return list;
		
	}
}