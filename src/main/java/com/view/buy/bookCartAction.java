package com.view.buy;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class bookCartAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "장바구니");
		
	}

}
