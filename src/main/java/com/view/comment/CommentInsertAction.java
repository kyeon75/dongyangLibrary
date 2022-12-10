package com.view.comment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.common.Action;

public class CommentInsertAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		String board_id = request.getParameter("board_id");
		String comment_content = request.getParameter("comment_content");
		
		if (user_id == null || user_id.equals("")) {
			return "login.do";
		}
		
		CommentDTO dto = new CommentDTO();
		dto.setBoard_id(Integer.parseInt(board_id));
		dto.setUserId(user_id);
		dto.setComment_content(comment_content);
		
		CommentDAO dao = new CommentDAO();
		Boolean isResult = dao.insertComment(dto);
		if (!isResult) {
			request.setAttribute("alert", "댓글 작성 실패");
		}
		
		return "post.do?board_id=" + board_id;
	}
}
