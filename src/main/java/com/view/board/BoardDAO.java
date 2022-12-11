package com.view.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.dm.common.JDBCutil;

public class BoardDAO {
	final String BOARD_INSERT="insert into boardtbl(board_title, board_content, user_id) values(?, ?, ?);";
	final String BOARD_LIST="select * from boardtbl order by board_id desc LIMIT ?, ?;";
	final String BOARD_USER_ID_LIST = "select * from boardtbl where user_id = ?;";
	final String BOARD_SELECT_ID = "select * from boardtbl where board_id= ?;";
	final String BOARD_DELETE = "delete from boardtbl where board_id = ?";
	final String BOARD_SELETE_TITLE = "";
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	public boolean insertBoard(BoardDTO dto) {
		boolean result = false;
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(BOARD_INSERT);
			pstmt.setString(1, dto.getBoard_title());
			pstmt.setString(2, dto.getBoard_content());
			pstmt.setString(3, dto.getUser_id());
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
	public ArrayList<BoardDTO> selectBoardList() {
		return selectBoardList(0, 10);
	}
	public ArrayList<BoardDTO> selectBoardList(int page) {
		return selectBoardList(page, 10);
	}
	public ArrayList<BoardDTO> selectBoardList(int page, int list_num) {
		ArrayList<BoardDTO> aList = new ArrayList<BoardDTO>();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(BOARD_LIST);
			pstmt.setInt(1, page*10);
			pstmt.setInt(2, list_num);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setBoard_id(rs.getInt("board_id"));
				dto.setBoard_title(rs.getString("board_title"));
				dto.setBoard_content(rs.getString("board_content"));
				dto.setUser_id(rs.getString("user_id"));
				dto.setPostdate(rs.getString("postdate"));
				dto.setVisitcount(rs.getInt("visitcount"));
				aList.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return aList;
	}
	public ArrayList<BoardDTO> selectBoardListUser_id(String user_id) {
		ArrayList<BoardDTO> aList = new ArrayList<BoardDTO>();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(BOARD_USER_ID_LIST);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setBoard_id(rs.getInt("board_id"));
				dto.setBoard_title(rs.getString("board_title"));
				dto.setBoard_content(rs.getString("board_content"));
				dto.setUser_id(rs.getString("user_id"));
				dto.setPostdate(rs.getString("postdate"));
				dto.setVisitcount(rs.getInt("visitcount"));
				aList.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return aList;
	}
	public BoardDTO selectBoardId(int id) {
		BoardDTO dto = new BoardDTO();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(BOARD_SELECT_ID);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto.setBoard_id(rs.getInt("board_id"));
				dto.setBoard_title(rs.getString("board_title"));
				dto.setBoard_content(rs.getString("board_content"));
				dto.setUser_id(rs.getString("user_id"));
				dto.setPostdate(rs.getString("postdate"));
				dto.setVisitcount(rs.getInt("visitcount"));
			} else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return dto;
	}
	public boolean deleteBoard(int board_id) {
		boolean isResult = false;
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(BOARD_DELETE);
			pstmt.setInt(1, board_id);
			pstmt.executeUpdate();
			isResult = true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return isResult;
	}
	
	public boolean updateBoard(String feild, String value, int board_id) {
		boolean isResult = false;
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement("update boardtbl set " + feild + " = '" + value + "' where board_id = " + board_id + "; ");
			pstmt.executeUpdate();
			isResult = true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return isResult;
	}
}
