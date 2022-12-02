package com.view.book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Vector;

import com.dm.common.JDBCutil;

public class BookDAO {
	Connection conn=null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	//인기에 따른 검색
	public List<BookDTO> selectBookPage(String standard) {
		List<BookDTO> bList = new Vector<BookDTO>();
		
		String query = "select * from booktbl";
		if (!standard.equals("")) {
			query += " order by " + standard + " desc limit 10";
		}
		
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BookDTO dto = new BookDTO();
				dto.setBook_id(rs.getString("book_id"));//도서번호
				dto.setImg_src(rs.getString("img_src"));//도서이미지
				dto.setBook_title(rs.getString("book_title"));//도서제목
				dto.setPrice(rs.getInt("price"));//도서가격
				dto.setDescription(rs.getString("description"));//도서줄거리
				
				bList.add(dto);
				
			}
			
		}catch (Exception e) {
			System.out.println("카테고리로 검색할때 오류");
			e.printStackTrace();
		}
		
		
		return bList;
		
		
		
		
	}
}
