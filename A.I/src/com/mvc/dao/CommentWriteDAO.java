package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class CommentWriteDAO {

	DataSource ds = null;
	Connection conn = null;
	PreparedStatement ps = null;
	
	public CommentWriteDAO(){
		try {
            Context ctx = new InitialContext();
            ds = (DataSource) ctx.lookup("java:comp/env/jdbc/Oracle");
            conn = ds.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	
	public int commentwrite(String comments, String bbsno, String user_id) {
		
		String sql = "INSERT INTO com(commentno, bbsno, user_id, comments) VALUES(com_seq.NEXTVAL,?,?,?)";
		int result = 0;
		
		try {
			/*conn = ds.getConnection();*/
			ps = conn.prepareStatement(sql);
			ps.setString(1, bbsno);
			ps.setString(2, user_id);
			ps.setString(3, comments);
			result = ps.executeUpdate();
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
		
		return result;
	}

}
