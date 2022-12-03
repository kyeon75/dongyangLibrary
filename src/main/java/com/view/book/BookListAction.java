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
		
		request.setAttribute("dto", dto);

		return "book";
	}
}
