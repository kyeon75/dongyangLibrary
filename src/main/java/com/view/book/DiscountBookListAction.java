package com.view.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class DiscountBookListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "discount");
		BookDAO dao = new BookDAO();
		
		List<BookDTO> bLists = dao.selectBookPage("discount");
		request.setAttribute("bLists", bLists);
		
		
		return "search";
	}

}
