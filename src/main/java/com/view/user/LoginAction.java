package com.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dm.common.RegisterDAO;
import com.dm.common.RegisterDTO;

public class LoginAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		RegisterDAO dao = new RegisterDAO();
		RegisterDTO dto = dao.selectUserId(id);
		
		if (dto == null) {
			request.setAttribute("alert", "로그인 실패");
			return "login";
		} else if (dto.getPassword().equals(pw)) {
			HttpSession session = request.getSession();
			session.setAttribute("id", dto.getId());
			request.setAttribute("alert", "로그인 성공");
			return "main";
		} else {
			request.setAttribute("alert", "로그인 실패");
			return "login";
		}
	}
}
