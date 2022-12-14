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
	
	public int selectBookCount(String standard) {
		int totalCount = 0;
		
		String query = "select count(*) from (select * from booktbl where " + standard + " is not null)t";
		
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery(query);
			rs.next();
			totalCount = rs.getInt(1);
		}catch (Exception e) {
			System.out.println("검색할때 오류");
			e.printStackTrace();
		}
		return totalCount;
	}
	
	//인기에 따른 검색
	public List<BookDTO> selectBookPage(String standard) {
		List<BookDTO> bList = new Vector<BookDTO>();
		
		String query = "select * from (select * from booktbl where " + standard + " is not null "+ 
						"order by " + standard + " desc limit 10)t " +
				        "limit 5 offset 1 ";
		
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BookDTO dto = new BookDTO();
				dto.setBook_id(rs.getString("book_id"));//도서번호
				dto.setImg_src(rs.getString("img_src"));//도서이미지
				dto.setBook_title(rs.getString("book_title"));//도서제목
				dto.setWriter(rs.getString("author"));
				dto.setPrice(rs.getInt("price"));//도서가격
				dto.setDescription(rs.getString("description"));//도서줄거리	
				bList.add(dto);
			}
		}catch (Exception e) {
			System.out.println("검색할때 오류");
			e.printStackTrace();
		}finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return bList;
	}
	//카테고리 검색
	public List<BookDTO> selectCategory(String standard) {
		List<BookDTO> bList = new Vector<BookDTO>();
		
		String query = "select *from booktbl where category ='" + standard + "';";
		
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
				dto.setWriter(rs.getString("author"));
				dto.setDescription(rs.getString("description"));//도서줄거리
				bList.add(dto);
			}
		}catch (Exception e) {
			System.out.println("카테고리 검색할때 오류");
			e.printStackTrace();
		}
		return bList;
	}

	public BookDTO selectBook(String id) {
		BookDTO dto = new BookDTO();
		
		String query = "select * from booktbl where book_id= ?;";
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setBook_id(rs.getString("book_id"));//책아이디
				dto.setWriter(rs.getString("author"));//작가
				dto.setImg_src(rs.getString("img_src"));//도서이미지
				dto.setBook_title(rs.getString("book_title"));//도서제목
				dto.setPrice(rs.getInt("price"));//도서가격
				dto.setWriter(rs.getString("author"));
				dto.setDescription(rs.getString("description"));//도서줄거리
			}else {
				return null;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	//검색어를 통한 검색
	public List<BookDTO> selectSearchBook(String searchWord) {
		List<BookDTO> bList = new Vector<BookDTO>();
		
		String query = "select * from booktbl where book_title like  '%" +
		searchWord + "%' or author like '%" + searchWord + "%'";
		
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
				dto.setWriter(rs.getString("author"));
				dto.setDescription(rs.getString("description"));//도서줄거리
				bList.add(dto);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return bList;	
	}
	
	public List<BookDTO> selectBookMainPage(String standard) {
		List<BookDTO> bList = new Vector<BookDTO>();
		
		String query = "select * from booktbl  where " + standard + 
				" is not null order by " + standard + " desc limit 4";
		
		try {
			conn=JDBCutil.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				BookDTO dto = new BookDTO();
				dto.setBook_id(rs.getString("book_id"));//도서번호
				dto.setImg_src(rs.getString("img_src"));//도서이미지
				dto.setBook_title(rs.getString("book_title"));//도서제목
				dto.setWriter(rs.getString("author"));//저자
				dto.setPublisher(rs.getString("publisher"));//출판사
				bList.add(dto);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCutil.close(rs, pstmt, conn);
		}
		return bList;
	}
}
