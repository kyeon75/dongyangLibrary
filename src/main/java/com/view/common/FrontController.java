package com.view.common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.view.admin.AdminBoardAction;
import com.view.admin.AdminBookAction;
import com.view.admin.AdminBookInsertAction;
import com.view.admin.AdminBookProcAction;
import com.view.admin.AdminOrderAction;
import com.view.admin.AdminUserAction;
import com.view.admin.AdminUserDeleteProcAction;
import com.view.admin.AdminUserUpdateAction;
import com.view.admin.AdminUserUpdateProcAction;
import com.view.board.BoardAction;
import com.view.board.BoardPostAction;
import com.view.board.BoardPostEditorAction;
import com.view.book.BestBookListAction;
import com.view.book.BookCategoryAction;
import com.view.book.BookListAction;
import com.view.book.BookSearchAction;
import com.view.book.DiscountBookListAction;
import com.view.book.HotBookListAction;
import com.view.book.MainAction;
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
		Boolean isAdminPage = false;
		Boolean isForward = true;
		
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
			isForward = false;
		} else if (page.equals("/post.do")) {
			action = new BoardPostAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/best.do")) {
			action = new BestBookListAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/hot.do")) {
			action = new HotBookListAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/discount.do")) {
			action = new DiscountBookListAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/book.do")) {
			action = new BookListAction();
			viewPage = action.execute(request, response);
		} else if (page.equals("/category.do")) {
			action = new BookCategoryAction();
			viewPage = action.execute(request, response);
		}else if (page.equals("/search.do")){
			action = new BookSearchAction();
			viewPage = action.execute(request, response);
		}else if (page.equals("/admin.do")) {
			action = new AdminBoardAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
		} else if (page.equals("/admin/index.do")) {
			action = new AdminBoardAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
		} else if (page.equals("/admin/boardMgr.do")) {
			action = new AdminBoardAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
		} else if (page.equals("/admin/bookMgr.do")) {
			action = new AdminBookAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
		} else if (page.equals("/admin/orderMgr.do")) {
			action = new AdminOrderAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
		} else if (page.equals("/admin/userMgr.do")) {
			action = new AdminUserAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
		} else if (page.equals("/admin/bookInsert.do")) {
			action = new AdminBookInsertAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
		} else if (page.equals("/admin/userUpdate.do")) {
			action = new AdminUserUpdateAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
		} else if (page.equals("/admin/userUpdateProc.do")) {
			action = new AdminUserUpdateProcAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
			isForward = false;
		} else if (page.equals("/admin/userDeleteProc.do")) {
			action = new AdminUserDeleteProcAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
			isForward = false;
		} else if (page.equals("/admin/bookProc.do")) {
			action = new AdminBookProcAction();
			viewPage = action.execute(request, response);
			isAdminPage = true;
		} else if (page.equals("/index.do")) {
			action = new MainAction();
			viewPage = action.execute(request, response);
		} 
		
		
		request.setAttribute("page", viewPage);
		if (isForward) {
			if (isAdminPage) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/index.jsp");
				dispatcher.forward(request, response);
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
				dispatcher.forward(request, response);
			}
		} else {
			if (isAdminPage) {
				response.sendRedirect(request.getContextPath() + "/admin/" + viewPage + ".do");
			} else {
				response.sendRedirect(request.getContextPath() + "/" + viewPage + ".do");
			}
		}
	}
}
