package com.view.buy;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.book.BookListAction;

@WebServlet("/buy/*")
public class BuyFrontController extends HttpServlet {
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
		page = page.substring(4);
		
		Action action = null;
		String viewPage = null;
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		if (page.equals("/bookcart")) {
			action = new BookCartAction();
			action.execute(request, response);
			viewPage = "bookcart";
		} else if (page.equals("/payment")) {
			action = new PaymentAction();
			action.execute(request, response);
			viewPage = "payment";
		}
		
		request.setAttribute("page", viewPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}
}
