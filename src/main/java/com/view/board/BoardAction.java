package com.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class BoardAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		BoardDAO dao = new BoardDAO();
		String boardPage = request.getParameter("board_page");
		if (boardPage != null) {
			request.setAttribute("boardList", dao.selectBoardList(Integer.parseInt(boardPage)-1));
		} else {
			request.setAttribute("boardList", dao.selectBoardList());
		}
		
		return "board";
	}
}
