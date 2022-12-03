package com.view.book;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;



public class BestBookListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "베스트셀러");
		int start = 1;
		
		BookDAO dao = new BookDAO();
		
		List<BookDTO> bLists = dao.selectBookPage("total_buy", start);
		
		request.setAttribute("bLists", bLists);
		
		
		
		return "search";
	}
}
