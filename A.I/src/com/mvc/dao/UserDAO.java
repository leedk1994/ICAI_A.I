package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class UserDAO {
	
	DataSource ds = null;
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public UserDAO() {		
		try {
			Context ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/Oracle");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	public boolean login(String id, String pw) {
		
		boolean success = false;
		
		String sql="SELECT user_id FROM compjoin WHERE user_id=? AND pw=?";
		
		try {
			/*conn = ds.getConnection();*/
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			rs = ps.executeQuery();
			success = rs.next();	
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
		
		return success;
	}

	public int join(String userid, String userpw, String username, String userage, String useremail,
			String userphone, String userque, String userqueans, String compnum) {
		
		int success = 0;
		String sql="INSERT INTO compjoin(user_id,pw,name,age,email,phone,que,queans,comp_num) VALUES(?,?,?,?,?,?,?,?,?)";
		
		try {
			/*conn = ds.getConnection();*/
			ps = conn.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setString(2, userpw);
			ps.setString(3, username);
			ps.setString(4, userage);
			ps.setString(5, useremail);
			ps.setString(6, userphone);
			ps.setString(7, userque);
			ps.setString(8, userqueans);
			ps.setString(9, compnum);
			success = ps.executeUpdate();
			ps.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				ps.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
				
		return success;
	}

	public boolean check(String id) {
		String sql = "SELECT user_id FROM compjoin WHERE user_id=?";
		boolean success=false;
		try {
			/*conn = ds.getConnection();*/
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			
			rs = ps.executeQuery();
			
			if(rs.next()){
				success = true;
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
		
		return success;
	}
	
}
