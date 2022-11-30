package com.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardPostAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "자유게시판");
		
	}

}