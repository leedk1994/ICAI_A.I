package com.mvc.service;

public class MoreService {

	public String moreread(String end) {
		
		int end2 = Integer.parseInt(end);
		
		end2 = end2 + 10;
		
		end = String.valueOf(end2);
		
		return end;
	}

	

}
