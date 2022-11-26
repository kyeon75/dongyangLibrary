package com.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyInfoAction implements Action {
       
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//액션실행코드
		return "myInfo";
	}
}
