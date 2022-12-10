package com.view.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.common.Action;

public class MainAction implements Action {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		BookDAO dao = new BookDAO();
		
		List<BookDTO> totalLists = dao.selectBookMainPage("total_buy");
		List<BookDTO> tdayLists = dao.selectBookMainPage("tday_buy");
		List<BookDTO> disLists = dao.selectBookMainPage("discount");
		
		request.setAttribute("totalLists", totalLists);
		request.setAttribute("tdayLists", tdayLists);
		request.setAttribute("disLists", disLists);
		
		return "main";
	}
}
