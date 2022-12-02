package com.view.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminBoardAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "board";
		
	}

}