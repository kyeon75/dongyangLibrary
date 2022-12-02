package com.view.book;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class BestBookListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "베스트셀러");
		
		BookDAO dao = new BookDAO();
		
		List<BookDTO> bLists = dao.selectBookPage("total_buy");
		
		request.setAttribute("bLists", bLists);
		
		
		
		
	}

}
