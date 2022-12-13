package com.view.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class HotBookListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "핫한상품");
		
		BookDAO dao = new BookDAO();
		
		List<BookDTO> bLists = dao.selectBookPage("tday_buy");
		
		request.setAttribute("bLists", bLists);
		
		return "search";
	}

}
