 package com.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.common.Action;

public class BoardPostDeleteAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		if (user_id == null) {
			return "login.do";
		}
		
		String board_id = request.getParameter("board_id");
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.selectBoardId(Integer.parseInt(board_id));
		
		if (dto.getUser_id().equals(user_id)) {
			Boolean isResult = dao.deleteBoard(Integer.parseInt(board_id));
			if (isResult) {
				return "board.do";
			} else {
				return "post.do?board_id="+board_id;
			}
		}
		
		return "board.do";
	}

}
