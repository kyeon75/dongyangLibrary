package com.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MyInfoAction implements Action {
       
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		UserDAO dao = new UserDAO();
		UserDTO dto = null;
		if (id == null || (dto = dao.selectUserId(id)) == null) {
			System.out.println(id);
			return "login";
		} else {
			request.setAttribute("myInfo", dto);
			return "myInfo";
		}
	}
}
