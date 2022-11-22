package com.dm.view.book;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchBook.do")
public class selectBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public selectBook() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		action(request, response);
	}
	protected void action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("cmd");
		HashMap<String, String> titles = new HashMap<String, String>() {{
			put("best","베스트셀러");
			put("hot","핫한도서");
			put("sale","할인");
		}};
		request.setAttribute("title", titles.get(title));
		
		request.setAttribute("page", "search");
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}
}
