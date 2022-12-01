package com.view.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HotBookListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "hot");
		
		BookDAO dao = new BookDAO();
		
		List<BookDTO> bLists = dao.selectBookPage("tday_buy");
		
		request.setAttribute("bLists", bLists);
		
	}

}
