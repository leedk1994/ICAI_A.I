package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import javax.naming.Context;
import javax.naming.InitialContext;

import javax.sql.DataSource;



public class CrudDAO {

	DataSource ds = null;
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public CrudDAO(){
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 학원등록
	public int resist(String writer, String compName, String compNum, String compCost, String compField, String compProccess,
			String compAge, String compFaddress, String compSaddress, String compSubaddress, String compPhone) {
		
		String sql = "INSERT INTO compResist(resist_idx,user_id,comp_name,comp_num,comp_cost,comp_field,comp_proccess,comp_age,comp_faddress,comp_saddress,comp_subaddress,comp_phone) "
					+"VALUES(resist_idx.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?)";
		int success = 0;
		
		try {
			/*conn = ds.getConnection();*/
			ps = conn.prepareStatement(sql);
			ps.setString(1, writer);
			ps.setString(2, compName);
			ps.setString(3, compNum);
			ps.setString(4, compCost);
			ps.setString(5, compField);
			ps.setString(6, compProccess);
			ps.setString(7, compAge);
			ps.setString(8, compFaddress);
			ps.setString(9, compSaddress);
			ps.setString(10, compSubaddress);
			ps.setString(11, compPhone);
			success = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			try {
				ps.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return success;
	}
	
	public boolean search(String compFaddress, String compSaddress, String compField,String compName, String user_id) {
		String sql = "SELECT comp_faddress,comp_saddress,comp_field,comp_name,user_id FROM compResist"
	+" WHERE comp_faddress=? AND comp_saddress=? AND comp_field=? AND comp_name like ?";
		boolean success = false;
		
		try {
			/*conn = ds.getConnection();*/
			ps = conn.prepareStatement(sql);
			ps.setString(1, compFaddress);
			ps.setString(2, compSaddress);
			ps.setString(3, compField);
			ps.setString(4, "%"+compName+"%");
			rs = ps.executeQuery();
			success = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
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
