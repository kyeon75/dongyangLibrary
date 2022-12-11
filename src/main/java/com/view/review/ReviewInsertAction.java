package com.view.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.common.Action;

public class ReviewInsertAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		String book_id = request.getParameter("book_id");
		String review_content = request.getParameter("review_content");
		String review_score = request.getParameter("review_score");
		
		if (user_id == null || user_id.equals("")) {
			return "login.do";
		}
		
		ReviewDTO dto = new ReviewDTO();
		dto.setBook_id(book_id);
		dto.setUser_id(user_id);
		dto.setReview_content(review_content);
		dto.setReview_score(Integer.parseInt(review_score));
		
		ReviewDAO dao = new ReviewDAO();
		Boolean isResult = dao.insertReview(dto);
		if (!isResult) {
			request.setAttribute("alert", " 작성 실패");
		}
		
		return "book.do?book_id=" + book_id;
	}
}
