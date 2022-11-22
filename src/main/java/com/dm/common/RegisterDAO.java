package com.dm.common;

import java.sql.*;
import java.util.ArrayList;

public class RegisterDAO {
	final String USER_INSERT="insert into membertbl values(?, ?, ?, ?);";
	final String USER_LIST="select * from membertbl;";
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	public void insertMember(RegisterDTO mem) {
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(USER_INSERT);
			pstmt.setString(1, mem.getMemberid());
			pstmt.setString(2, mem.getPassword());
			pstmt.setString(3, mem.getName());
			pstmt.setString(4, mem.getEmail());
			pstmt.executeUpdate();
			conn.close();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(pstmt, conn);
		}
	}
	
	public ArrayList<RegisterDTO> selectMemberList(){
		ArrayList<RegisterDTO> aList = new ArrayList<RegisterDTO>();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(USER_LIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RegisterDTO rd=new RegisterDTO();
				rd.setMemberid(rs.getString("memberid"));
				rd.setPassword(rs.getString("password"));
				rd.setName(rs.getString("name"));
				rd.setEmail(rs.getString("email"));
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
