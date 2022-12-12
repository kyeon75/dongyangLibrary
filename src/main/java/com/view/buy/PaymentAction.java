package com.view.buy;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.board.BoardDTO;
import com.view.common.Action;
import com.view.user.UserDAO;
import com.view.user.UserDTO;

public class PaymentAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		if (id == null) {
			return "login";
		}
		UserDAO dao = new UserDAO();
		UserDTO dto = dao.selectUserId(id);
		if (dto == null) {
			return "login";
		}
		request.setAttribute("user_info", dto);
		
		return "payment";
	}

}
