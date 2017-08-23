package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mvc.dto.CompanyDTO;

public class CompanyDAO {

	DataSource ds = null;
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs =null;

	public CompanyDAO(){
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<CompanyDTO> companylist(String compName, String compFaddress, String compSaddress,
			String compField, String user_id) {
		ArrayList<CompanyDTO> companys = new ArrayList<CompanyDTO>();

		String sql = "SELECT comp_Faddress,comp_Saddress,comp_field,comp_name,user_id FROM compResist"
				+" WHERE comp_Faddress=? AND comp_Saddress=? AND comp_field=? AND comp_name like ?";

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, compFaddress);
			ps.setString(2, compSaddress);
			ps.setString(3, compField);
			ps.setString(4, "%"+compName+"%");
				
			rs = ps.executeQuery();

			while(rs.next()){
				CompanyDTO dto = new CompanyDTO();
				dto.setUser_id(rs.getString("user_id"));
				dto.setComp_faddress(rs.getString("comp_Faddress"));
				dto.setComp_saddress(rs.getString("comp_Saddress"));
				dto.setComp_field(rs.getString("comp_field"));
				dto.setComp_name(rs.getString("comp_name"));
				companys.add(dto);
			}
			
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
		return companys;
	}

	public CompanyDTO detail(String compName) {
		CompanyDTO dto = null;
		
		String sql = "SELECT comp_num,comp_name,comp_faddress,comp_saddress,comp_field,comp_cost,comp_proccess,comp_age,comp_subaddress,comp_phone,user_id FROM compResist"
				+" WHERE comp_name=?";

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, compName);

			rs = ps.executeQuery();

			if(rs.next()){
				dto = new CompanyDTO();
				dto.setComp_num(rs.getString("comp_num"));
				dto.setComp_name(rs.getString("comp_name"));
				dto.setComp_faddress(rs.getString("comp_faddress"));
				dto.setComp_saddress(rs.getString("comp_saddress"));
				dto.setComp_field(rs.getString("comp_field"));
				dto.setComp_cost(rs.getString("comp_cost"));
				dto.setComp_proccess(rs.getString("comp_proccess"));
				dto.setComp_age(rs.getString("comp_age"));
				dto.setComp_subaddress(rs.getString("comp_subaddress"));
				dto.setComp_phone(rs.getString("comp_phone"));
				dto.setUser_id(rs.getString("user_id"));

			}
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

		return dto;
	}

	public int update(String compName, String compCost, String compField, String compProccess, String compAge,
			String compFaddress, String compSaddress, String compSubaddress, String compPhone, String userId) {
		String sql = "UPDATE compResist SET comp_cost=?, comp_field=?, comp_proccess=?, comp_age=?, comp_faddress=?, comp_saddress=?, comp_subaddress=?, comp_phone=?"
				+" WHERE comp_name=?";
		int success = 0;
		
		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, compCost);
			ps.setString(2, compField);
			ps.setString(3, compProccess);
			ps.setString(4, compAge);
			ps.setString(5, compFaddress);
			ps.setString(6, compSaddress);
			ps.setString(7, compSubaddress);
			ps.setString(8, compPhone);
			ps.setString(9, compName);

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

	public int delete(String compName) {
		String sql = "DELETE FROM compResist WHERE comp_name=?";
		int success = 0;

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, compName);

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

	public boolean recommend(String compFaddress, String compSaddress, String compField, String compAge) {
		String sql = "SELECT comp_field,comp_age,comp_faddress,comp_saddress FROM compResist"
				+" WHERE comp_field=? AND comp_age=? AND comp_faddress=? AND comp_saddress=?";
		boolean success = false;

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, compField);
			ps.setString(2, compAge);
			ps.setString(3, compFaddress);
			ps.setString(4, compSaddress);
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

	public ArrayList<CompanyDTO> companyRcList(String compName, String compFaddress, String compSaddress, String compField, String compAge,String user_id) {
		ArrayList<CompanyDTO> companyrc = new ArrayList<CompanyDTO>();

		String sql = "SELECT comp_name,user_id FROM compResist"
				+" WHERE comp_Faddress=? AND comp_Saddress=? AND comp_field=? AND comp_age=?";

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, compFaddress);
			ps.setString(2, compSaddress);
			ps.setString(3, compField);
			ps.setString(4, compAge);

			rs = ps.executeQuery();

			while(rs.next()){
				CompanyDTO dto = new CompanyDTO();
				dto.setComp_name(rs.getString("comp_name"));
				dto.setUser_id(rs.getString("user_id"));
				companyrc.add(dto);
			}
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
		return companyrc;
	}

	public CompanyDTO rcdetail(String compName) {
		CompanyDTO dto = null;
		
		String sql = "SELECT comp_name,comp_faddress,comp_saddress,comp_field,comp_cost,comp_proccess,comp_age,comp_subaddress,comp_phone,user_id FROM compResist"
				+" WHERE comp_name=?";

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, compName);

			rs = ps.executeQuery();

			if(rs.next()){
				dto = new CompanyDTO();
				dto.setComp_name(rs.getString("comp_name"));
				dto.setComp_faddress(rs.getString("comp_faddress"));
				dto.setComp_saddress(rs.getString("comp_saddress"));
				dto.setComp_field(rs.getString("comp_field"));
				dto.setComp_cost(rs.getString("comp_cost"));
				dto.setComp_proccess(rs.getString("comp_proccess"));
				dto.setComp_age(rs.getString("comp_age"));
				dto.setComp_subaddress(rs.getString("comp_subaddress"));
				dto.setComp_phone(rs.getString("comp_phone"));
				dto.setUser_id(rs.getString("user_id"));
			}
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

		return dto;
	}

	public int rcupdate(String compName, String compCost, String compField, String compProccess, String compAge,
			String compFaddress, String compSaddress, String compSubaddress, String compPhone) {
		String sql = "UPDATE compResist SET comp_cost=?, comp_field=?, comp_proccess=?, comp_age=?, comp_faddress=?, comp_saddress=?, comp_subaddress=?, comp_phone=?"
				+" WHERE comp_name=?";
		int success = 0;

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, compCost);
			ps.setString(2, compField);
			ps.setString(3, compProccess);
			ps.setString(4, compAge);
			ps.setString(5, compFaddress);
			ps.setString(6, compSaddress);
			ps.setString(7, compSubaddress);
			ps.setString(8, compPhone);
			ps.setString(9, compName);

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

	public int rcdelete(String compName) {
		String sql = "DELETE FROM compResist WHERE comp_name=?";
		int success = 0;

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, compName);

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

	public int favComp(CompanyDTO info, String Id) {
		
		
		String sql = "INSERT INTO favorite VALUES (?,?)";
		int success = 0;

		try {
			
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, info.getComp_num());
			ps.setString(2, Id);

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

	public List<CompanyDTO> favList(String userId) {
		
		ArrayList<CompanyDTO> companys = new ArrayList<CompanyDTO>();

		String sql = "SELECT COM.comp_name,FA.user_id,FA.comp_num "
				+ "FROM favorite FA "
				+ "INNER JOIN compResist COM "
				+ "ON FA.comp_num = COM.comp_num AND FA.user_id = ?";

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, userId);
			
			rs = ps.executeQuery();

			while(rs.next()){
				CompanyDTO dto = new CompanyDTO();
				
				dto.setComp_name(rs.getString("comp_name"));
				dto.setComp_num(rs.getString("comp_num"));
				
				companys.add(dto);
			}
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
		return companys;
	}

	public int favCancle(HashMap<String, String> map) {
		String sql = "DELETE FROM favorite WHERE user_id=? and comp_num=?";
		int success = 0;

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, map.get("loginId"));
			ps.setString(2, map.get("compNum"));

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

	public CompanyDTO favdetail(String compName) {
		CompanyDTO dto = null;
		
		String sql = "SELECT comp_num,comp_name,comp_faddress,comp_saddress,comp_field,comp_cost,comp_proccess,comp_age,comp_subaddress,comp_phone,user_id FROM compResist"
				+" WHERE comp_name=?";

		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, compName);

			rs = ps.executeQuery();

			if(rs.next()){
				dto = new CompanyDTO();
				dto.setComp_num(rs.getString("comp_num"));
				dto.setComp_name(rs.getString("comp_name"));
				dto.setComp_faddress(rs.getString("comp_faddress"));
				dto.setComp_saddress(rs.getString("comp_saddress"));
				dto.setComp_field(rs.getString("comp_field"));
				dto.setComp_cost(rs.getString("comp_cost"));
				dto.setComp_proccess(rs.getString("comp_proccess"));
				dto.setComp_age(rs.getString("comp_age"));
				dto.setComp_subaddress(rs.getString("comp_subaddress"));
				dto.setComp_phone(rs.getString("comp_phone"));
				dto.setUser_id(rs.getString("user_id"));

			}
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

		return dto;
	}

	public int confirm(String loginId) {
		
		String sql ="SELECT comp_num FROM compjoin WHERE user_id=?";
		String compnum = null;
		int success = 0;
		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, loginId);
			
			rs = ps.executeQuery();
			
			if(rs.next()){
				compnum=rs.getString("comp_num");
			}
			if(compnum==null){
				success = 0;
			}else{
				success =1;
			}
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