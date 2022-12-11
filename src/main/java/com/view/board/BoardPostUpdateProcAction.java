package com.view.board;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.common.Action;

public class BoardPostUpdateProcAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		if (user_id == null) {
			return "login.do";
		}
		
		String board_id = request.getParameter("board_id");
		String board_title = request.getParameter("board_title");
		String board_content = request.getParameter("board_content");
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.selectBoardId(Integer.parseInt(board_id));
		
		if (dto.getUser_id().equals(user_id)) {
			dao.updateBoard("board_title", board_title, Integer.parseInt(board_id));
			dao.updateBoard("board_content", board_content, Integer.parseInt(board_id));
		}
		
		return "post.do?board_id="+board_id;
	}

}
