package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mvc.dto.FindpwDTO;

public class FindpwDAO {

		DataSource ds = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		public FindpwDAO() {		
			try {
				Context ctx = new InitialContext();
				ds = (DataSource) ctx.lookup("java:comp/env/jdbc/Oracle");
				conn = ds.getConnection();
			} catch (Exception e) {
				e.printStackTrace();
			}		
		}
		public ArrayList<FindpwDTO> findpw(String idl, String que, String ques) {
				
				

				String sql = "SELECT pw FROM compjoin WHERE user_id=? AND que=? AND queans=?";
				ArrayList<FindpwDTO> list = new ArrayList<>();			
				try {
					/*conn = ds.getConnection();*/
					ps = conn.prepareStatement(sql);
					ps.setString(1, idl);
					ps.setString(2, que);
					ps.setString(3, ques);
					rs = ps.executeQuery();
					while(rs.next()){
						FindpwDTO dto = new FindpwDTO();
						dto.setPw(rs.getString("pw"));
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
