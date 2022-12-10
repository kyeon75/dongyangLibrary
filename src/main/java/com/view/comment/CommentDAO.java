package com.view.comment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.dm.common.JDBCutil;
import com.view.user.UserDTO;

public class CommentDAO {
	final String COMMENT_INSERT="insert into comment(board_id, user_id, comment_content) values(?, ?, ?);";
	final String COMMENT_LIST="select * from comment where board_id = ? order by comment_id asc;";
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	public boolean insertComment(CommentDTO dto) {
		boolean result = false;
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(COMMENT_INSERT);
			pstmt.setInt(1, dto.getBoard_id());
			pstmt.setString(2, dto.getUserId());
			pstmt.setString(3, dto.getComment_content());
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

	public ArrayList<CommentDTO> selectCommentList(int board_id){
		ArrayList<CommentDTO> aList = new ArrayList<CommentDTO>();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(COMMENT_LIST);
			pstmt.setInt(1, board_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CommentDTO rd=new CommentDTO();
				rd.setCommentId(rs.getInt("comment_id"));
				rd.setBoard_id(rs.getInt("board_id"));
				rd.setUserId(rs.getString("user_id"));
				rd.setDate(rs.getString("comment_date"));
				rd.setComment_content(rs.getString("comment_content"));
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
