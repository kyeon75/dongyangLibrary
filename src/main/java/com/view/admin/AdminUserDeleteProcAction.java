package com.view.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;
import com.view.user.UserDAO;

public class AdminUserDeleteProcAction implements Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String user_id = request.getParameter("user_id");
		
        UserDAO dao = new UserDAO();
		if (!dao.deleteUser(user_id)) {
			request.setAttribute("alert", "회원 삭제 실패");
			return "userMgr";
		}
		
		request.setAttribute("alert", "회원 삭제 성공");
		return "userMgr";
	}
}
