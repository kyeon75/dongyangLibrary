package com.view.user;

import java.sql.*;
import java.util.ArrayList;

import com.dm.common.JDBCutil;

public class UserDAO {
	final String USER_INSERT="insert into usertbl values(?, ?, ?, ?, ?, ?, ?, ?, ?);";
	final String USER_LIST="select * from usertbl;";
	final String USER_SELECT_ID="select * from usertbl where user_id= ?;";
	final String USER_DELETE="delete from usertbl where user_id= ?;";
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	public boolean insertUser(UserDTO mem) {
		boolean isResult = false;
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
			isResult = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(pstmt, conn);
		}
		return isResult;
	}
	
	public boolean updateUser(String feild, String value, String user_id){
		boolean isResult = false;
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement("update usertbl set " + feild + " = '" + value + "' where user_id = '" + user_id + "'; ");
			pstmt.executeUpdate();
			isResult = true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(pstmt, conn);
		}
		return isResult;
	}
	
	public boolean deleteUser(String user_id) {
		boolean isResult = false;
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(USER_DELETE);
			pstmt.setString(1, user_id);
			pstmt.executeUpdate();
			isResult = true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(pstmt, conn);
		}
		return isResult;
	}
	
	private UserDTO resultToDTO(ResultSet rs) {
		UserDTO rd = new UserDTO();
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
	public UserDTO selectUserId(String id) {
		UserDTO dto = new UserDTO();
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
	public ArrayList<UserDTO> selectMemberList(){
		ArrayList<UserDTO> aList = new ArrayList<UserDTO>();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(USER_LIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				UserDTO rd=new UserDTO();
				rd.setId(rs.getString("user_id"));
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
