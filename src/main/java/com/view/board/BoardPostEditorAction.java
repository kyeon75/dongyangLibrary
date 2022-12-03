package com.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.common.Action;

public class BoardPostEditorAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String user_id = (String)session.getAttribute("id");
		
		if (user_id == null) {
			request.setAttribute("alert", "회원 전용 게시판입니다. 로그인해주세요");
			return "board";
		}
		
		BoardDTO dto = new BoardDTO();
		dto.setBoard_title(title);
		dto.setBoard_content(content);
		dto.setUser_id((String)session.getAttribute("id"));
		
		BoardDAO dao = new BoardDAO();
		if (dao.insertBoard(dto)) {
			request.setAttribute("alert", "게시판 작성에 성공하셨습니다.");
		} else {
			request.setAttribute("alert", "게시판 작성에 실패하셨습니다.");
		}
		
		return "board";
	}
}