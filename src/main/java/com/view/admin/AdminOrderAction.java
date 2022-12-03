package com.view.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class AdminOrderAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "order";
		
	}

}