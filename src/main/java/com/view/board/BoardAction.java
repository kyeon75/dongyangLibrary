package com.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "board";
		
	}

}
