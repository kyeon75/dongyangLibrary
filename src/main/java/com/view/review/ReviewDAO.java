package com.view.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.dm.common.JDBCutil;

public class ReviewDAO {
	final String REVIEW_INSERT="insert into reviewtbl(book_id, user_id, review_content, review_score) values(?, ?, ?, ?);";
	final String REVIEWT_LIST="select * from reviewtbl where book_id = ? order by review_id asc;";
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	public boolean insertReview(ReviewDTO dto) {
		boolean result = false;
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(REVIEW_INSERT);
			pstmt.setString(1, dto.getBook_id());
			pstmt.setString(2, dto.getUser_id());
			pstmt.setString(3, dto.getReview_content());
			pstmt.setInt(4, dto.getReview_score());
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

	public ArrayList<ReviewDTO> selectCommentList(String book_id){
		ArrayList<ReviewDTO> aList = new ArrayList<ReviewDTO>();
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(REVIEWT_LIST);
			pstmt.setString(1, book_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReviewDTO dto = new ReviewDTO();
				dto.setReview_id(rs.getInt("review_id"));
				dto.setBook_id(rs.getString("book_id"));
				dto.setUser_id(rs.getString("user_id"));
				dto.setReview_date(rs.getString("review_date"));
				dto.setReview_content(rs.getString("review_content"));
				dto.setReview_score(rs.getInt("review_score"));
				aList.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return aList;
	}
}
