package com.view.book;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class BookListAction implements Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//sql 알아서 불러오고
		
		return "book";
	}
}
