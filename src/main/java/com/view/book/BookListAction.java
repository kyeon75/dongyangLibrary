package com.view.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class BookListAction implements Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("book_id");
		
		BookDAO dao = new BookDAO();
		
		BookDTO dto = new BookDTO();
		
		dto = dao.selectBook(id);
		
		request.setAttribute("title", dto.getBook_title());
		request.setAttribute("writer", dto.getWriter());
		request.setAttribute("price", dto.getPrice());
		request.setAttribute("description", dto.getDescription());
		request.setAttribute("score", dto.getScore());

		return "book";
	}
}
