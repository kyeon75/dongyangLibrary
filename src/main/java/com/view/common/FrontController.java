package com.view.common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.view.board.BoardAction;
import com.view.board.BoardPostAction;
import com.view.board.BoardPostEditorAction;
import com.view.buy.BookCartAction;
import com.view.buy.PaymentAction;
import com.view.user.LoginAction;
import com.view.user.LogoutAction;
import com.view.user.MyInfoAction;
import com.view.user.SignUpAction;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 'http://localhost:8080/dongyangLibrary/login.do'
		String requestURI = request.getRequestURI(); // '/dongyangLibrary/login.do'
		String contextPath = request.getContextPath(); // '/dongyangLibrary'
		String page = requestURI.substring(contextPath.length()); // '/login.do'
		
		Action action = null;
		String viewPage = null;
		
		System.out.println(requestURI);
		System.out.println(contextPath);
		System.out.println(page);
		
		if (page.equals("/signUp.do")) {
			viewPage = "signUp";
		} else if (page.equals("/signUpProcess.do")) {
			action = new SignUpAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/login.do")) {
			viewPage = "login";
		} else if (page.equals("/loginProcess.do")) {
			action = new LoginAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/logout.do")) {
			action = new LogoutAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/myInfo.do")) {
			action = new MyInfoAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/bookcart.do")) {
			action = new BookCartAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/payment.do")) {
			action = new PaymentAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/board.do")) {
			action = new BoardAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/postEditor.do")) {
			viewPage = "boardPostEditor";
		} else if (page.equals("/postEditorProcess.do")) {
			action = new BoardPostEditorAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/post.do")) {
			action = new BoardPostAction();
			viewPage = action.execute(request, response);
		}
		
		request.setAttribute("page", viewPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}
}
