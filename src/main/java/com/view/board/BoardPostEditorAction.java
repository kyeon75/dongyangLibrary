package com.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class BoardPostEditorAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("에디터액션");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		
		//여기서 dto 객체 만들고
		//dao에 넣어서 board insert 하면 됨
		return "board";
	}
}