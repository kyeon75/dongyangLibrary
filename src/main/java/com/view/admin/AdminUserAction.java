package com.view.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;
import com.view.user.UserDAO;

public class AdminUserAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		UserDAO dao = new UserDAO();
		
		request.setAttribute("userList", dao.selectMemberList());
		return "userMgr";
	}
}