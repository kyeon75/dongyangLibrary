package com.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dm.common.RegisterDAO;
import com.dm.common.RegisterDTO;

public class LoginAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		RegisterDAO dao = new RegisterDAO();
		RegisterDTO dto = dao.selectUserId(id);
		if (dto != null) {
			return "login";
		}
		
		return "main";
	}

}
