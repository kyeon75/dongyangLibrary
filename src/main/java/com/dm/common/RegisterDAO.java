package com.dm.common;

import java.sql.*;
import java.util.ArrayList;

public class RegisterDAO {
	final String USER_INSERT="insert into usertbl values(?, ?, ?, ?, ?, ?, ?, ?, ?);";
	final String USER_LIST="select * from usertbl;";
	final String USER_SELECT_ID = "select * from usertbl where user_id= ?;";
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	public boolean insertUser(RegisterDTO mem) {
		boolean result = false;
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(USER_INSERT);
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getPassword());
			pstmt.setString(3, mem.getName());
			pstmt.setString(4, mem.getEmail());
			pstmt.setString(5, mem.getMobileNumber());
			pstmt.setString(6, mem.getBaseAddress());
			pstmt.setString(7, mem.getSubAddress());
			pstmt.setString(8, mem.getGender());
			pstmt.setString(9, mem.getBirth());
			pstmt.executeUpdate();
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
		} finally {
			JDBCutil.close(pstmt, conn);
		}
		return result;
	}
	private RegisterDTO resultToDTO(ResultSet rs) {
		RegisterDTO rd=new RegisterDTO();
		try {
			rd.setId(rs.getString("user_id"));
			rd.setPassword(rs.getString("password"));
			rd.setName(rs.getString("name"));
			rd.setEmail(rs.getString("email"));
			rd.setMobileNumber(rs.getString("mobile_number"));
			rd.setBaseAddress(rs.getString("base_address"));
			rd.setSubAddress(rs.getString("sub_address"));
			rd.setGender(rs.getString("gender"));
			rd.setBirth(rs.getString("birth"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rd;
	}
	public RegisterDTO selectUserId(String id) {
		RegisterDTO dto = new RegisterDTO();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(USER_SELECT_ID);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = resultToDTO(rs);
				return dto;
			} else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return null;
	}
	public ArrayList<RegisterDTO> selectMemberList(){
		ArrayList<RegisterDTO> aList = new ArrayList<RegisterDTO>();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(USER_LIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RegisterDTO rd=new RegisterDTO();
				rd.setId(rs.getString("id"));
				rd.setPassword(rs.getString("password"));
				rd.setName(rs.getString("name"));
				rd.setEmail(rs.getString("email"));
				rd.setMobileNumber(rs.getString("mobile_number"));
				rd.setBaseAddress(rs.getString("base_address"));
				rd.setSubAddress(rs.getString("sub_address"));
				rd.setGender(rs.getString("gender"));
				rd.setBirth(rs.getString("birth"));
				aList.add(rd);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return aList;
	}
}
