package com.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.common.Action;

public class LoginAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		UserDAO dao = new UserDAO();
		UserDTO dto = dao.selectUserId(id);
		
		if (dto == null) {
			request.setAttribute("alert", "로그인 실패");
			return "login";
		} else if (dto.getPassword().equals(pw)) {
			HttpSession session = request.getSession();
			session.setAttribute("id", dto.getId());
			request.setAttribute("alert", "로그인 성공");
			return "/";
		} else {
			request.setAttribute("alert", "로그인 실패");
			return "login";
		}
	}
}
