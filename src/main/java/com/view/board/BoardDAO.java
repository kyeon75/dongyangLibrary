package com.view.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.dm.common.JDBCutil;
import com.view.user.UserDTO;

public class BoardDAO {
	final String BOARD_INSERT="insert into boardtbl(board_title, board_content, user_id) values(?, ?, ?);";
	final String BOARD_LIST="select * from boardtbl;";
	final String BOARD_SELECT_ID = "select * from boardtbl where board_id= ?;";
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	//insert into boardtbl(board_title, board_content, user_id) values("dsdsa","saddada","tjdalstjdals100");
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
		ArrayList<BoardDTO> aList = new ArrayList<BoardDTO>();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(BOARD_LIST);
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
	public BoardDTO selectBoardId(String id) {
		BoardDTO dto = new BoardDTO();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(BOARD_SELECT_ID);
			pstmt.setString(1, id);
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
}
