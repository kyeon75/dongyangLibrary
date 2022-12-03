package com.view.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class BookSearchAction implements Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String searchWord = (String)request.getParameter("searchWord");
		
		request.setAttribute("title",  searchWord + " 에 대한 검색결과");
		
		BookDAO dao = new BookDAO();
		
		List<BookDTO> bLists = dao.selectSearchBook(searchWord);
		
		request.setAttribute("bLists", bLists);
		
		return "search";
	}
}
