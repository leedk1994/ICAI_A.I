package com.mvc.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.CompanyDAO;
import com.mvc.dto.CompanyDTO;

public class CompanyService {
	
	HttpServletRequest request = null;
	HttpServletResponse response = null;
	
	public CompanyService(HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
	}

	public ArrayList<CompanyDTO> companylist(String compName, String compFaddress, String compSaddress,
			String compField, String user_id) {
		CompanyDAO dao = new CompanyDAO();
		return dao.companylist(compName,compFaddress,compSaddress,compField,user_id);
	}
	public CompanyDTO detail(String compName){
		CompanyDAO dao = new CompanyDAO();
		return dao.detail(compName);
	}

	public ArrayList<CompanyDTO> companyRcList(String compName, String compFaddress, String compSaddress, String compField, String compAge,String user_id) {
		CompanyDAO dao = new CompanyDAO();
		return dao.companyRcList(compName,compFaddress,compSaddress,compField,compAge,user_id);
	}


}