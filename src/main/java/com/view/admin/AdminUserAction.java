package com.view.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class AdminUserAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "user";
		
	}

}