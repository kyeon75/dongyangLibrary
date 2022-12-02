package com.view.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/*")
public class AdminFrontController extends HttpServlet {
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
		page = page.substring(6);
		
		Action action = null;
		String viewPage = null;
		
		System.out.println(123);
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		if (page.equals("/user")) {
			action = new AdminUserAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/book")) {
			viewPage = "book";
		} else if (page.equals("/board")) {
			action = new AdminBoardAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/order")) {
			action = new AdminOrderAction();
			viewPage = action.execute(request, response);
		}
		
		request.setAttribute("page", viewPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}
}
