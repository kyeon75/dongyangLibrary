package com.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class BoardPostAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String board_id = request.getParameter("board_id");
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.selectBoardId(board_id);
		
		request.setAttribute("title", dto.getBoard_title());
		request.setAttribute("user", dto.getUser_id());
		request.setAttribute("date", dto.getPostdate());
		request.setAttribute("content", dto.getBoard_content());

		return "boardPost";
	}
}