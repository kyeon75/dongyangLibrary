package com.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.board.BoardDAO;
import com.view.common.Action;

public class MyInfoAction implements Action {
       
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		String type = request.getParameter("type");
		UserDAO dao = new UserDAO();
		UserDTO dto = null;
		
		if (user_id == null || (dto = dao.selectUserId(user_id)) == null) {
			return "login";
		}
		
		if (type == null) {
			return "myInfo";
		}
		
		if (type.equals("info")) {
			request.setAttribute("user_info", dto);
		} else if (type.equals("board")) {
			BoardDAO board_dao = new BoardDAO();
			request.setAttribute("board_list", board_dao.selectBoardListUser_id(user_id));
		}
		return "myInfo";
	}
}
