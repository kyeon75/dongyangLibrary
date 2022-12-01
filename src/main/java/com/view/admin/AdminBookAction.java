package com.view.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminBookAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "book";
		
	}

}