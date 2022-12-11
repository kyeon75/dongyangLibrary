package com.view.book;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;
import com.view.review.ReviewDAO;
import com.view.review.ReviewDTO;

public class BookListAction implements Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("book_id");
		
		BookDAO book_dao = new BookDAO();
		BookDTO book_dto = book_dao.selectBook(id);
		
		request.setAttribute("img_src", book_dto.getImg_src());
		request.setAttribute("title", book_dto.getBook_title());
		request.setAttribute("writer", book_dto.getWriter());
		request.setAttribute("price", book_dto.getPrice());
		request.setAttribute("description", book_dto.getDescription());
		request.setAttribute("score", book_dto.getScore());

		ReviewDAO review_dao = new ReviewDAO();
		ArrayList<ReviewDTO> review_list = review_dao.selectCommentList(id);
		
		request.setAttribute("review_list", review_list);
		
		return "book";
	}
}
