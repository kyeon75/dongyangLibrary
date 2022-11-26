package com.dm.common;

import java.sql.*;

public class JDBCutil {
	final static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	final static String JDBC_URL="jdbc:mysql://localhost:3306/webproject?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
	final static String JDBC_USER="root";
	final static String JDBC_PASS="tjdals2002";
	
	 public static Connection getConnection() {
		try {
			Class.forName(JDBC_DRIVER);
			return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	 
	 public static void close(PreparedStatement psmt, Connection conn) {
		 try {
			 psmt.close();
			 conn.close();
		 } catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
	 public static void close(ResultSet rs, PreparedStatement psmt, Connection conn) {
		 try {
			 rs.close();
			 psmt.close();
			 conn.close();
		 } catch(SQLException e) {
			 e.printStackTrace();
		 }
	 }
}
