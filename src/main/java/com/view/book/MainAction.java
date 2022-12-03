package com.view.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class MainAction implements Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		return "main";
	}
}
