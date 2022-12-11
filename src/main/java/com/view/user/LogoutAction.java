package com.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.common.Action;


public class LogoutAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		return "/";
	}
}
