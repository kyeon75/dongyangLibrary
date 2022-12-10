package com.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.view.common.Action;

public class BoardPostUpdateAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String board_id = request.getParameter("board_id");
		BoardDAO board_dao = new BoardDAO();
		BoardDTO board_dto = board_dao.selectBoardId(Integer.parseInt(board_id));
		
		request.setAttribute("title", board_dto.getBoard_title());
		request.setAttribute("content", board_dto.getBoard_content());

		return "boardPostUpdateEditor";
	}

}
