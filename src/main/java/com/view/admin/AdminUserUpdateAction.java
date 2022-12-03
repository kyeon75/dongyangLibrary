package com.view.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;
import com.view.user.UserDAO;

public class AdminUserUpdateAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String userId = request.getParameter("user_id");
		UserDAO dao = new UserDAO();
		request.setAttribute("dto", dao.selectUserId(userId));
		return "userUpdate";
	}
}