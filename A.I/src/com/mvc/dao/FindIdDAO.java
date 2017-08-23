package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mvc.dto.FindidDTO;


public class FindIdDAO {
	
	DataSource ds = null;
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public FindIdDAO() {		
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/Oracle");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	public ArrayList<FindidDTO> findid(String email, String que, String ques) {
			
			/*ResultSet rs = null;*/

			String sql = "SELECT user_id FROM compjoin WHERE email=? AND que=? AND queans=?";
			ArrayList<FindidDTO> list = new ArrayList<>();			
			try {
				/*conn = ds.getConnection();*/
				ps = conn.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, que);
				ps.setString(3, ques);
				rs = ps.executeQuery();
				while(rs.next()){
					FindidDTO dto = new FindidDTO();
					dto.setUser_id(rs.getString("user_id"));
					list.add(dto);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally{
				try {
					rs.close();
					ps.close();
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			return list;
		}

}
