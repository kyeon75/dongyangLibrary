package com.view.book;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/book/*")
public class BookFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = requestURI.substring(contextPath.length());
		page = page.substring(5);
		
		Action action = null;
		String viewPage = null;
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		if (page.equals("/best")) {
			action = new BestBookListAction();
			action.execute(request, response);
			viewPage = "search";
		} else if (page.equals("/hot")) {
			action = new HotBookListAction();
			action.execute(request, response);
			viewPage = "search";
		} else if (page.equals("/discount")) {
			action = new DiscountBookListAction();
			action.execute(request, response);
			viewPage = "search";
		} else if (page.equals("/book")) {
			action = new BookListAction();
			action.execute(request, response);
			viewPage = "book";
		}
		
		
		request.setAttribute("page", viewPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}
}
