package com.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardPostAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "자유게시판");
		return "boardPost";
	}

}