package com.dm.view.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HotBookListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "hot");
		
	}

}
