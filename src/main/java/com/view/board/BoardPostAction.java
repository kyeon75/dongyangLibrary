package com.view.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.comment.CommentDAO;
import com.view.comment.CommentDTO;
import com.view.common.Action;

public class BoardPostAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String board_id = request.getParameter("board_id");
		BoardDAO board_dao = new BoardDAO();
		BoardDTO board_dto = board_dao.selectBoardId(Integer.parseInt(board_id));
		
		request.setAttribute("title", board_dto.getBoard_title());
		request.setAttribute("user", board_dto.getUser_id());
		request.setAttribute("date", board_dto.getPostdate());
		request.setAttribute("content", board_dto.getBoard_content());
		
		CommentDAO comment_dao = new CommentDAO();
		ArrayList<CommentDTO> commentList = comment_dao.selectCommentList(Integer.parseInt(board_id));
		
		request.setAttribute("commentList", commentList);
		
		
		return "boardPost";
	}
}